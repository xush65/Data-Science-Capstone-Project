# file size (in MegaBytes/MB)
file.info("final/en_US/en_US.blogs.txt")$size   / 1024^2
file.info("final/en_US/en_US.news.txt")$size    / 1024^2
file.info("final/en_US/en_US.twitter.txt")$size / 1024^2

# number of lines
load("blogs.RData")
load("news.RData")
load("twitter.RData")

# number of lines
length(blogs)
length(news)
length(twitter)

# number of characters per line
summary( nchar(blogs)   )
summary( nchar(news)    )
summary( nchar(twitter) )

# more character analysis analysis
library(stringi)
stats_blogs   <- stri_stats_general(blogs)
stats_news    <- stri_stats_general(news)
stats_twitter <- stri_stats_general(twitter)

# textual analysis
words_blogs   <- stri_count_words(blogs)
words_news    <- stri_count_words(news)
words_twitter <- stri_count_words(twitter)

# summaries
summary( words_blogs   )
summary( words_news    )
summary( words_twitter )

# plots
library(ggplot2)
par(mfrow = c(1, 3))
hist(words_blogs)
hist(words_news)
hist(words_twitter)
#Note that the pictures are quite uneasy to describe the distribution of worlds,
#let's make some adjustment
par(mfrow = c(1, 3))
hist(words_blogs,breaks = max(words_blogs)/10,xlim=0.05*range(words_blogs))
hist(words_news,breaks = max(words_news)/10,xlim=0.15*range(words_news))
hist(words_twitter)


