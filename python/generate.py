#!/usr/bin/env python2.7
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4

import codecs
import os
import sqlite3

from datetime import datetime
from jinja2 import Environment, FileSystemLoader
from sortedcontainers import SortedDict, SortedSet

DATABASE = os.path.abspath('../db/cs.db')
TEMPLATES = os.path.abspath('templates')
OUTPUT = os.path.abspath('../web')
LOCATIONS = OUTPUT + '/location/{}'
NETWORKS = OUTPUT + '/{}/{}'
REGIONS = OUTPUT + '/region/{}'

def makedirs(path):
    """Make all the directories in the given path."""
    try:
        os.makedirs(path)
    except OSError:
        if not os.path.isdir(path):
            raise

class CellUMTS:
    """Represents a cell in a UMTS network."""
    frequency = None
    identity = None
    location = None
    network = None
    scramblingCode = None
    def __init__(self, network, location, identity, frequency, scramblingCode):
        self.network = network
        self.location = location
        self.identity = identity
        self.network.cells[self.identity] = self
        self.frequency = frequency
        self.scramblingCode = scramblingCode
        if self.location != None:
            self.location.cells.add(self)
    def controller(self):
        return (self.identity >> 16)
    def shortIdentity(self):
        return (self.identity & 0xFFFF)

class Country:
    """Represents a country."""
    mcc = None
    name = None
    networks = None
    def __init__(self, mcc, name):
        self.mcc = mcc 
        self.name = name
        self.networks = {}

class Location:
    """Represents a location."""
    cells = None
    identity = None
    latitude = None
    longitude = None
    name = None
    region = None
    def __init__(self, region, identity, name, latitude, longitude):
        self.region = region
        self.identity = identity
        self.region.locations[self.identity] = self
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.cells = SortedSet()

class Network:
    """Represents a mobile network."""
    cells = None
    country = None
    mnc = None
    name = None
    def __init__(self, country, mnc, name):
        self.cells = SortedDict()
        self.country = country
        self.mnc = mnc
        self.name = name
        self.country.networks[self.mnc] = self

class Region:
    """Represents a region."""
    children = None
    identity = None
    locations = None
    name = None
    parent = None
    def __init__(self, parent, identity, name):
        self.parent = parent
        self.identity = identity 
        self.name = name
        self.children = {}
        if self.parent != None:
            self.parent.children[self.identity] = self
        self.locations = {}

conn = sqlite3.connect(DATABASE)
c = conn.cursor()

countries = {}
regions = {}
locations = {}
networks = []

for row in c.execute('SELECT mcc, name FROM country'):
    countries[row[0]] = Country(row[0], row[1])

for row in c.execute('SELECT mcc, mnc, name FROM network'):
    networks.append(Network(countries[row[0]], row[1], row[2]))

for row in c.execute('SELECT id, name, parent FROM region ORDER BY parent'):
    if row[2] == None:
        regions[row[0]] = Region(None, row[0], row[1])
    else:
        regions[row[0]] = Region(regions[row[2]], row[0], row[1])

for row in c.execute('SELECT id, name, region, latitude, longitude FROM location'):
    locations[row[0]] = Location(regions[row[2]], row[0], row[1], row[3], row[4])

for row in c.execute('SELECT mcc, mnc, lcid, uarfcn, psc, location FROM cell_umts'):
    if row[5] == None:
        cell = CellUMTS(countries[row[0]].networks[row[1]], None, row[2], row[3], row[4])
    else:
        cell = CellUMTS(countries[row[0]].networks[row[1]], locations[row[5]], row[2], row[3], row[4])

conn.close()

env = Environment(loader = FileSystemLoader(TEMPLATES))
locationsGeojsonTemplate = env.get_template('locations.geojson')
mapTemplate = env.get_template('map.html')
networkTemplate = env.get_template('network.html')
regionTemplate = env.get_template('region.html')
locationTemplate = env.get_template('location.html')

makedirs(OUTPUT)

with codecs.open(OUTPUT + "/index.html", encoding='utf-8', mode='w') as f:
    f.write(env.get_template('index.html').render(title='NZ Cell Sites',
        countries=countries, regions=regions, now=datetime.now()))

for region in regions.itervalues():
    if region.locations != None:
        makedirs(REGIONS.format(region.identity))
        with codecs.open((REGIONS + "/index.html").format(region.identity),
            encoding='utf-8', mode='w') as f:
            f.write(regionTemplate.render(region=region, now=datetime.now(), title=region.name))
        with codecs.open((REGIONS + "/locations.geojson").format(region.identity), encoding='utf-8', mode='w') as f:
            f.write(locationsGeojsonTemplate.render(locations=region.locations,
                now=datetime.now(), title=region.name))
        makedirs((REGIONS + "/map").format(region.identity))
        with codecs.open((REGIONS + "/map/index.html").format(region.identity), encoding='utf-8', mode='w') as f:
            f.write(mapTemplate.render(title=region.name))

for location in locations.itervalues():
    makedirs(LOCATIONS.format(location.identity))
    with codecs.open((LOCATIONS + "/index.html").format(location.identity), encoding='utf-8', mode='w') as f:
        f.write(locationTemplate.render(location = location, now=datetime.now(), title=location.name))

for network in networks:
    makedirs(NETWORKS.format(network.country.mcc, network.mnc))
    with codecs.open((NETWORKS + "/index.html").format(network.country.mcc, network.mnc), encoding='utf-8', mode='w') as f:
        f.write(networkTemplate.render(network = network, now=datetime.now(), title=network.name))
