#!/usr/bin/env python3

import sys
import csv
from openregister import Item
from openregister.representations.tsv import Writer


fields = ['social-housing-provider', 'name', 'start-date', 'end-date']
writer = Writer(sys.stdout, fields)

reader = csv.DictReader(sys.stdin, delimiter='\t')
reader.fieldnames = [field.strip() for field in reader.fieldnames]

for row in reader:

    item = Item()

    item['social-housing-provider'] = row['RP Code']
    item['name'] = row['Name of Registered Provider']
    item['start-date'] = row['Date Registered']

    # TBD: match company / charity / local-authority

    writer.write(item)

writer.close()
