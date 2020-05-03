#!/bin/R
# ANCOVA - https://www.youtube.com/watch?v=LbALMywWiKc

library("readr")
library("car")

df <- read.delim("test=data.tsv")

# set output file
sink("ancova-output.txt")

# aov(dependent ~ independent * factor, data = data_frame)
model = aov(Kb.Load ~ Caff.Dose * Caff.Ratio, data = df)
print(model)

# calculate anova
anova(model)

