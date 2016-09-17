require(jsonlite)
tweetdata = readLines("tweets.json", warn=FALSE)
tweetdatajson=fromJSON(tweetdata)
