#!/bin/python

import random

# 1 entry
post_likes = ["name1", "name2", "name3"]

# 3 entries
telegram_members = ["name4", "name5"]
telegram = telegram_members + telegram_members + telegram_members

# 5 entries
podcast_reviewers = ["name6"]
podcast = podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers + podcast_reviewers

entries = post_likes + telegram + podcast
winners = random.sample(entries, 2)
print(winners)


# February Winners:
