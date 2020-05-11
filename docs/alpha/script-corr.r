#!/usr/bin/R
# compute descriptive statistics, correlation, and regression from raw.txt

# required pacakges
# - dplyr
# - Hmisc
# - corrplot

# library
library("dplyr")
library("Hmisc")
library("corrplot")

# improt raw .txt to data frame
raw_data <- read.delim("raw_data-test.txt")

# convert data to numerical matrix
df <- as.matrix(as.data.frame(lapply(raw_data, as.numeric)))

# output file - descriptive stats
sink("descriptive_stats-test.txt", split=TRUE, append=FALSE)

# descriptive stats
summary(raw_data)

# output file - correlation and regression
sink("correlation-test.txt", split=TRUE, append=FALSE)

# correlations (r) and significance (p)
rcorr(df, type=c("pearson"))

# plotting correlation (insignificant left blank)
res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.05, insig = "blank")
dev.copy(png, "test-corr-0500.png")
dev.off()

# repeat at 4 = 0.01
corrplot(res$r, type="upper", p.mat = res$P, sig.level = 0.01, insig = "blank")
dev.copy(png, "test-corr-0100.png")
dev.off()

# repeat at r = 0.001
corrplot(res$r, type="upper", p.mat = res$P, sig.level = 0.001, insig = "blank")
dev.copy(png, "test-corr-0010.png")
dev.off()

# repeat at r = 0.0001
corrplot(res$r, type="upper", p.mat = res$P, sig.level = 0.0001, insig = "blank")
dev.copy(png, "test-corr-0001.png")
dev.off()
