require(twitteR)
consumer_key<- 'I7IJk28YOEe83gTqJigZki5Mn'
consumer_secret <- 'ZA520IF0hajksdhjshsdkWy1XwkUEfwtNROvSe8z1So8E08zutMfEV'
access_token <- '66080021-wAZqz1TGnyzlJGXaHj7HGO0yLK98RK7UBGXgX58dH'
access_secret <- '1bvz4UGjohjhsjd98h06EDlbPKMA3ZhzI5cyIonfetAhr'
setup_twitter_oauth(consumer_key=consumer_key, consumer_secret = consumer_secret, access_token = access_token, access_secret = access_secret)
1
searchtweet<-searchTwitter("house+rent", n=1000, lang="en", since="2016-02-25", until="2016-02-26")
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-02-26", until="2016-02-27")))
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-02-27", until="2016-02-28")))
searchtweet<-c(searchtweet,(searcrunhTwitter("house+rent", n=1000, lang="en", since="2016-02-28", until="2016-02-29")))
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-02-29", until="2016-03-01")))
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-03-01", until="2016-03-02")))
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-03-02", until="2016-03-03")))
searchtweet<-c(searchtweet,(searchTwitter("house+rent", n=1000, lang="en", since="2016-03-03", until="2016-02-04")))
df=do.call("rbind",lapply(searchtweet, as.data.frame))
require(jsonlite)
tweet <- toJSON(df)
write(tweet,"tweets.json")
