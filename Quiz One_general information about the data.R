Quiz 1
============ 
  Question 1
------------
  setwd("H:\\open course\\introduction to Rprogramming Hopkins\\10-Capstone Proram (Final Project)\\Capstone")
  file.info("data\\en_US/en_US.blogs.txt")$size / 1024^2
# find the Size of data

Question 2
------------
blogs <- readLines("data/en_US/en_US.blogs.txt")
news <- readLines("data/en_US/en_US.news.txt")
twitter <- readLines("data/en_US/en_US.twitter.txt")
length(twitter)
# find the Length of data

Question 3
------------
countblogs=na.omit(nchar(as.character(blogs), allowNA=TRUE))
countnews=na.omit(nchar(as.character(news), allowNA=TRUE))
counttwitter=na.omit(nchar(as.character(twitter), allowNA=TRUE))
# ��������blogs/news/twitter�и������ַ���������NAֵ���֣���������������Ȼ��ȥ������NAֵ
longblogs=max(countblogs)
longnews=max(countnews)
longtwitter=max(counttwitter)
max(longblogs,longnews,longtwitter)

Question 4
------------
  love_count <- sum(grepl("love", twitter))
hate_count <- sum(grepl("hate", twitter))
love_count / hate_count
# ץȡ�ؼ�����
Question 5
------------
biostats <- grep("biostats", twitter)
twitter[biostats]

Question 6
------------
sum(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))