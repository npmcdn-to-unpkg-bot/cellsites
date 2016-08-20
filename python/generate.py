#!/usr/bin/env python2.7
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4

import codecs
import os
import sqlite3

from datetime import datetime
from jinja2 import Environment, FileSystemLoader

DATABASE = os.path.abspath('../db/cs.db')
TEMPLATES = os.path.abspath('templates')
OUTPUT = os.path.abspath('../web')

index_output_path = os.path.abspath(OUTPUT + "/index.html")
regions_directory = os.path.abspath(OUTPUT + '/region/{}')
regions_output_path = os.path.abspath(regions_directory + "/index.html")
locations_directory = os.path.abspath(OUTPUT + '/location/{}')
locations_output_path = os.path.abspath(locations_directory + "/index.html")

#region_map_directory = os.path.abspath(regions_directory_output_path + "/map")
#region_map_document = os.path.abspath(region_map_directory + "/index.html")
region_locations_geojson_path = regions_directory + "/locations.geojson"

def makedirs(path):
    """Make all the directories in the given path."""
    try:
        os.makedirs(path)
    except OSError:
        if not os.path.isdir(path):
            raise

class Country:
    """Represents a country."""
    mcc = None
    name = None
    networks = None
    def __init__(self, mcc, name):
        self.mcc = mcc 
        self.name = name
    def add_network(self, network):
        """Add a network to this country."""
        if self.networks == None:
            self.networks = {}
        self.networks[network.mnc] = network

class Location:
    """Represents a location."""
    identifier = None
    latitude = None
    longitude = None
    name = None
    region = None
    def __init__(self, region, identifier, name, latitude, longitude):
        self.region = region
        self.identifier = identifier
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        if self.region != None:
            self.region.addLocation(self)

class Network:
    """Represents a mobile network."""
    country = None
    mnc = None
    name = None
    def __init__(self, country, mnc, name):
        self.country = country
        self.mnc = mnc
        self.name = name
        self.country.add_network(self)

class Region:
    """Represents a region."""
    children = None
    identifier = None
    locations = None
    name = None
    parent = None
    def __init__(self, parent, identifier, name):
        self.parent = parent
        self.identifier = identifier
        self.name = name
        if self.parent != None:
            parent.addChild(self)
    def addChild(self, child):
        """Add a child sub-region which is within this parent region."""
        if self.children == None:
            self.children = {}
        self.children[child.identifier] = child
    def addLocation(self, location):
        """Add a location to this region."""
        if self.locations == None:
            self.locations = {}
        self.locations[location.identifier] = location

conn = sqlite3.connect(DATABASE)
c = conn.cursor()

countries = {}
regions = {}
locations = {}

for row in c.execute('SELECT mcc, name FROM country'):
    countries[row[0]] = Country(row[0], row[1])

for row in c.execute('SELECT mcc, mnc, name FROM network'):
    Network(countries[row[0]], row[1], row[2])

for row in c.execute('SELECT id, name, parent FROM region ORDER BY parent'):
    if row[2] == None:
        regions[row[0]] = Region(None, row[0], row[1])
    else:
        regions[row[0]] = Region(regions[row[2]], row[0], row[1])

for row in c.execute('SELECT id, name, region, latitude, longitude FROM location'):
    locations[row[0]] = Location(regions[row[2]], row[0], row[1], row[3], row[4])

conn.close()

env = Environment(loader = FileSystemLoader(TEMPLATES))
locationsGeojsonTemplate = env.get_template('locations.geojson')
#mapTemplate = env.get_template('map.html')
regionTemplate = env.get_template('region.html')
locationTemplate = env.get_template('location.html')

makedirs(OUTPUT)

with codecs.open(index_output_path, encoding='utf-8', mode='w') as f:
    f.write(env.get_template('index.html').render(title='NZ Cell Sites',
        countries=countries, regions=regions, now=datetime.now()))

for region in regions.itervalues():
    if region.locations != None:
        makedirs(regions_directory.format(region.identifier))
        with codecs.open(regions_output_path.format(region.identifier),
            encoding='utf-8', mode='w') as f:
            f.write(regionTemplate.render(region=region, now=datetime.now(), title=region.name))
        with codecs.open(region_locations_geojson_path.format(region.identifier), encoding='utf-8', mode='w') as f:
            f.write(locationsGeojsonTemplate.render(locations=region.locations,
                now=datetime.now(), title=region.name))
        #makedirs(region_map_directory)
        #with codecs.open(.format(region.identifier), encoding='utf-8', mode='w') as f:
        #    f.write(map_temlate.render(region=region, now=datetime.now(), title=region.name))

for location in locations.itervalues():
    makedirs(locations_directory.format(location.identifier))
    with codecs.open(locations_output_path.format(location.identifier), encoding='utf-8', mode='w') as f:
        f.write(locationTemplate.render(location = location, now=datetime.now(), title=location.name))
