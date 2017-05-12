#!/usr/bin/env python3

import sys
import csv

sep = '\t'
fields = ['social-housing-provider', 'name', 'start-date', 'end-date']

print(sep.join(fields))

for row in csv.DictReader(sys.stdin, delimiter=sep):

    row['social-housing-provider'] = row['RP Code']
    row['name'] = row['Registered Provider Name']
    row['start-date'] = row['Registration Date']
    row['end-date'] = ''

    print(sep.join([row[field] for field in fields]))
