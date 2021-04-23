library(rtweet) # twitter api
library(tibble)
library(dplyr)
library(rlist)
#Exercise 1:
#1.1
covid_tweets <- search_tweets("#covid19",
                              n = 500,
                              include_rts = TRUE)
#1.2
covid_no_rt <- search_tweets("#covid19",
                             n = 500,
                             include_rts = FALSE)
#1.3
rdam_geocode <- '51.9244,4.4777,50km'
covid_rdam <- search_tweets("#covid19",
                            n = 500,
                            geocode = rdam_geocode)
#1.4
nl_geocode <- lookup_coords("Netherlands")
rm(nl_geocode)
lookup_coords("Netherlands")
nl_geocode <- list.load('data/nl_geocode.rds')


covid_nl <- search_tweets("#covid19",
                          n = 500,
                          geocode = nl_geocode)
#1.5
covid_nl_dutch <- search_tweets("#covid19",
                                n = 50000, lang = "nl")
#1.6
rivm_tweets <- get_timeline('rivm', n = 3200)
rm(rivm_tweets)

#1.7
rivm_friends <- get_followers('rivm', n = 190000, retryonratelimit = TRUE)

#1.8

