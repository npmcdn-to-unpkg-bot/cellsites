#!/usr/bin/env python2.7
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4

import codecs
import datetime
import os
import sqlite3
from jinja2 import Environment, PackageLoader

#
# Fetch the data from the database
#

conn = sqlite3.connect('../db/cs.db')
c = conn.cursor()

countries = {}
regions = {}
locations = {}

for row in c.execute('SELECT mcc, name FROM country ORDER BY name'):
    countries[row[0]] = {}
    countries[row[0]]['name'] = row[1]
    countries[row[0]]['networks'] = {}

for row in c.execute('SELECT mcc, mnc, name FROM network ORDER BY name'):
    countries[row[0]]['networks'][row[1]] = {}
    countries[row[0]]['networks'][row[1]]['name'] = row[2];

for row in c.execute('SELECT id, name, parent, locations_count FROM region_full ORDER BY parent'):
    region = {}
    region['id'] = row[0]
    region['name'] = row[1]
    region['locations_count'] = row[3]
    if row[3] > 0:
        region['locations'] = {}
    regions[row[0]] = region
    if row[2] != None:
        if regions[row[2]].get('children') == None:
            regions[row[2]]['children'] = {}
        regions[row[2]]['children'][row[0]] = region

for row in c.execute('SELECT id, name, region, latitude, longitude FROM location ORDER BY name'):
    location = {}
    location['name'] = row[1]
    location['region'] = regions[row[2]]
    location['latitude'] = row[3]
    location['longitude'] = row[4]
    locations[row[0]] = location
    regions[row[2]]['locations'][row[0]] = location # TODO fix this so it stores locaitons in alphabetical order

conn.close()

#
# Generate the pages from the templates
#

env = Environment(loader=PackageLoader('cellsitesnz', 'templates'))

title = "NZ Cell Sites"

template = env.get_template('index.html')

today = datetime.date.today()

with codecs.open('../web/index.html', encoding='utf-8', mode='w') as f:
    f.write(template.render(title='Cell Sites NZ',countries=countries,regions=regions[1]['children'],today=today))

regions_dir = '../web/region';

try:
    os.makedirs(regions_dir)
except OSError:
    if not os.path.isdir(regions_dir):
        raise

region_template = env.get_template('region.html')

for region in regions:
    if regions[region]['locations_count'] == 0:
        continue
    region_dir = regions_dir + '/' + str(region)
    try:
        os.makedirs(region_dir)
    except OSError:
        if not os.path.isdir(region_dir):
            raise
    with codecs.open(region_dir + '/index.html', encoding='utf-8', mode='w') as f:
        f.write(region_template.render(region=regions[region], locations=regions[region]['locations'], today=today, title=title))

location_template = env.get_template('location.html')

for location in locations:
    location_dir = '../web/location/' + str(location)
    try:
        os.makedirs(location_dir)
    except OSError:
        if not os.path.isdir(location_dir):
            raise
    with codecs.open(location_dir + '/index.html', encoding='utf8', mode='w') as f:
        f.write(location_template.render(location = locations[location], region=locations[location]['region'], today=today, title=locations[location]['name']))
