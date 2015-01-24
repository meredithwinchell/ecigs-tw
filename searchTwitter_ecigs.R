# get tweets with a hashtag -> for date since = n, until = n + 1d
tweets <- searchTwitter("#ecig OR ecig OR vape OR #vape OR 'esmoking'", n=10000, since="2015-01-01", until="2015-01-02")
# save data
save(tweets,file="getTweets_df_20150101.Rdata")