#!/bin/python

import random

entries = [
'name1',
'name2',
'name3',
'name4',
'name5']

winners = random.sample(entries, 2)
print(winners)
