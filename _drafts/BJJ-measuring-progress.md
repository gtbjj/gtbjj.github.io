---
layout: post
title: "Measuring Progress in Jiu Jitsu Training"
excerpt: "Using chess statistics to measure progress in Brazilian Jiu Jitsu"
category: BJJ
tags:
comment: true
---

#### Measuring Outcomes:

Belt rank is a symbol that we all know and recognize as an external metric or measure of validation.  Stripes on a blet are a more gradual recognition of the same measure.  Another external measure might be tournament medals or superfight victories.

What if you don't want to (or aren't able to for one reason or another) compete?  Belt promotions, even stripes, do not come along frequently, and in fact become less frequent as you progress higher in the ranks.  So, how do you measure your progress day-to-day, week-to-week, or month-to-month?

#### Grappling Metrics:

In chess, and some sports such as tennis and fencing, ther is an [Elo rating system](https://en.wikipedia.org/wiki/Elo_rating_system).  There are a lot of Reddit threads asking about such a system in MMA / BJJ which would make a lot of sense.  However, most of the difficulty seems to be in distinguishing different types of wins / losses and their respective impact.  For example, a win by knockout or submission is a lot more valuable than one by split decision.

At any rate, there are several sites out there that have tested this project hypothesis such as [bjj-elo.com](https://bjj-elo.com/) and [Fight Matrix](http://www.fightmatrix.com/2018/07/30/elo-rating-updates/).

#### Converting Chess Elo to BJJ:

When we consider [the parts of an Elo](https://blog.mackie.io/the-elo-algorithm) we get:

```
Rn = Ro + K * (S - E)
---------------------
Rn - The new rating of the player (After the match)
Ro - The old rating of the player (Before the match)
S - The actual score/outcome of the match
E - The expected score/outcome of the match
K - The K-factor
```

Obviously ```Rn``` is what we want to calculate.  Once the calculation has been done, ```Rn``` will become ```Ro``` after each day of sparring.

Also, don't worry about manaully doing the mat every time.  When you copy the equation, in Google Sheets for example, it will automatically recalculate the value based on the cells referenced and where you move the equation to.  (See the summary below for more information).  You just have to be very careful with all the parintheses involved whne you're initially putting in the equation.

#### Ro - Old Rating:

We all need to start somewhere.  I have played some chess, so I assigned these starting values based on belt rank comparatively to level of skill in chess:

```
1000  White Belt, a beginner
1200  Blue Belt, a casual player
1500  Purple Belt, a club player
1800  Brown Belt
2000  Black Belt, close to a "candidate master" in chess
2200  perhaps a competitive black belt, an "intermediate master" in chess
2400  world title at black belt, a "master" in chess
2500  multiple world titles at black belt, a "grandmaster" in chess
2700  legendary status
```

*see also [FIDE Chess Titles](https://en.wikipedia.org/wiki/FIDE_titles)

#### K - K-Factor:

This is a relatively simple figure to come up with.  The avove linked article about Elo math identifies that there are three different K-Values used.  The reason being that the less experienced you are, or the lower your score, the more impactful each game / match is.

I used a value of 10 in my calculations.  In chess ELO terms, 10 is used for players with over 30 games and have *ever* had a rating over 2400.  Obviously I'm not a black belt, but BJJ players go through way more rounds of sparring than chess players do competition matches.  Chess uses a K value of 30 for players who have had less than 30 games (if you've had less than 30 rounds of sparring, or even 300, this isn't the post for you!).  A value of 20 is used for players with more than 30 games, but have *never* had an ELO above 2400.

If you were only counting competition matches, or had two separate ratings for yourself (e.g. "training rating" and "competition rating"), then using the above 30, 20, 10 variations may be more applicable for the "competition rating".  Obviously then you'd stick with a K-value of 10 for the "training rating."

#### E - Expected Outcome:

This is the meat-and-potatoes and there is a lot of math, so bear with me.

```
x = Ra - Rb
exponent = -(x/n)
E = 1/(1+10^exponent)
---------------------

Rb = Your belt rank rating (e.g. 1,000; 1,200; 1,500; etc...)  Technically either Ra or Rb could be you or your opponent.  Having your rating as Rb will give a more conservative estimate if you are frequently trianing with same belt or lower.  The opposite would be true if the roles were reversed.

Ra = The average rating of your opponent.  It's easier to do it this way for the day's training rather than for each round.  To get this average, simply use the above 'strating point' values for each of your sparring partners.  E.G.:  If you rolled with two white belts (1000), a blue belt (1200), and a purple belt 1500), the average would be 1175.  So, you're Rb value for the day is 1175.

n = any positive value.  The FIDE uses 400 for chess, so that is what I used in my calculations as well.
```

So, let's say you're a blue belt (Ra = 1200), and Rb is you've rolled with a few blue and white belts (Rb = 1175).

E = 1 / (1 + 10^((1175 - 1200) / 400))

#### S - Score:

Finally, we need to calculate the actual score of the day's training!  For this, I used the modifiers suggested from Fight Matrix.  Scoring the day's rounds looks like this:

```
Win   by Submission  +1
Win   by Points      +0.66 (effectively a "major decision")
Lose  by Submission  -1
Lose  by Points      -0.67 (effectively a "major decision")
Draw                 +0.5
```

This seems to work even if there are multiple submisisons per round.  Obviously there would only be one draw or points outcome.

On your spreadsheet calculations then,

```S = (sub_wins) + (point_wins * 0.66) - (sub_loss) - (point_loss * 0.67) + (draws * 0.5)```

If you really wanted to get into the weeds, you could also include:

```
Win   by advantage  +0.33 (effectively a "slpit decision")
Lose  by advantage  -0.33 (effectively a "split decision")
```

#### Summary - Putting It All Together:

```Rn = Ro + K * (S - E)```

- Rn - The new rating of the player (After the match)
  - the new rating we're calculating for
- Ro - The old rating of the player (Before the match)
  - your previous / old rating (e.g. ```1200``` if you're a blue belt)
  - using your belted rating for each calculation will give a very conservative measure that will allow you to check day-to-day performance (e.g. did I perform better this Saturday than last Saturday).  As the difficulty of your sparring partners grows, so will the rating.
  - on the other hand, rather than using your belt ranked rating (a constant variable), you could use the calculated value of your last training session.  This may be more useful for a "competiton calculation" to see how you're growing over time (think of it as compond vs. simple interest) as the days add on top of each other.
- S - The actual score/outcome of the match
  - ```S = (sub_wins) + (point_wins * 0.66) - (sub_loss) - (point_loss * 0.67) + (draws * 0.5)```
- E - The expected score/outcome of the match
  - ```E = 1 / (1 + 10^((1175 - 1200) / 400))``` where 1200 is your previous rating and 1175 is your previous average opponent rating based on belt rank
- K - The K-factor
  - a constant ```10``` for training records, ```30``` for first 30 competition matches, or ```20``` after 30 competition matches, or ```10``` if your competition rating has ever been above 2400.

*If automatically calculating (e.g. copy and paste rows in a spreadsheet), if you copy into a blank row (say, a day you only did drilling, no rolling) then the rating will go down by 10 points.  I don't feel like this is a huge deal, and rather it's another measure to make sure we're being conservative and not overstating our abilities by "flufing the numbers."  We want an accurate assessment of ability to reflect on.

Pictures and Graphs of real data




#### Updates and Changes:

*Evaluation after 14 training sessions (94 rounds):*

The above was my original algorithm taken from a chess ELO converted to BJJ.  However, I made several efforts to make the algorithm more conservative, that is give a lower rating.  The reason being, as I gathered a larger data set grew (more days of training logged and evaluated) the numbers indicated I was progressing too quickly; after logging about a dozen training sessions.

There were two ways I could think of to counter this.  **One** would be to change belted point values for a given opponent (e.g. white belts being worth 800 instead of 1000, or purple belts being worth 1600 instead of 1500).  However, that seemed like it would be an arbitrary decision rather than trying to mirror different "mastery" levels in chess.  **Two** was to alter the algorithm to make it harder to gain (and keep) positive points.

** calculating multiple subs per round "works", but is more accurate if the number of results equals the number of opponents (used to calculate the "average opponent").  That is, if you submit a white belt three times in one round and log all three submission wins, there needs to be three 1000 values in the "average opponent" calculation, not just one.
** more conservative still: 1x for sub win / loss, 0.5 x point win / loss, 0.33 x draw.  In other words, a point win / loss is only worth half of a sub win / loss rather than two thirds; and a draw is only worth one third of submission win rather than half.
** appears to be good measure for competition, but daily trainings rack up points too fast, so need a more conservative formula.  Also, having a constant for your "previous rating" (e.g. 1200 if you're a blue belt) appears to favor wins more significantly that difficulty of opponent (e.g. it would be better to destroy lower belts than to test yourself and try new things against upper belts)

*Evaluation after 30 training sessions:*

Count draws as a point loss?  Would it put too much focus on "winning" in training and discourage experimentation?

Don't rely too much on the math.  You're going to need diversity one way or another.  If number of training (quality) partners is limited, you need to experiment more rather than "winning" with your bread-and-butter.  Alternatively, if you can test your A-Game against a variety of belts and styles you're proofing your skills that way too.

*Evaluation after 50 training sessions:*
