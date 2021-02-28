#!/bin/python

import random

# 1 entry / challenge post like
post_likes = ["burberry_venom", "hotchossbuns", "heidi.cross_carni.keto", "b_mac_37", "kratomkalbar_indonesia","tsunamitheseawing87", "ana_beatriz1971", "almacomunidad", "instinctivemovement", "instintiva_mente", "gentlezipper", "lifeontheout", "meat.your.potential", "ralph_ospina", "diabadassbeth"]

# 3 entries
telegram_members = ["Rick White", "Zach Moore", "Melvin Chia", "Rita Haedicke", "Hannah", "Joe Balderamma", "Cameron Turner", "Shaina", "Frank Lampard"]
telegram = telegram_members + telegram_members + telegram_members

# 5 entries
podcast_reviewers = []
podcast = podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers

entries = post_likes + telegram + podcast
winners = random.sample(entries, 2)
print(winners)

# 2021 Winners:
# February: Rita Haedicke (telegram), diabadassbeth (instagram)
