# conversion from list to data frame
tweets_df <- do.call(rbind, lapply(tweets, as.data.frame))
# write to csv; fill in the ... with a valid path
write.csv(tweets_df, "C:/.../tweets.csv")


## Preliminary Analyses
# install.packages("tm", dependencies=TRUE)
library("tm")
tweets_list <- sapply(tweets, function(x) x$getText())
tweets_corpus <- Corpus(VectorSource(tweets_list))
tweets_corpus <- tm_map(tweets_corpus, tolower, lazy = TRUE)
tweets_corpus <- tm_map(tweets_corpus, removePunctuation, lazy = TRUE)
tweets_corpus <- tm_map(tweets_corpus, function(x)removeWords(x,stopwords()), lazy = TRUE)

# install.packages("wordcloud")
library("wordcloud")

# errata: add 'unlist' to this call, thanks to John Whitehouse
wordcloud(unlist(tweets_corpus))

tweets_tdm <- TermDocumentMatrix(tweets_corpus)

tweets_tdm

# identify terms used at least 10 times
findFreqTerms(tweets_tdm, lowfreq=10)

# the word you choose, and its association level, obviously depend on the data you scraped from Twitter!
findAssocs(tweets_tdm, 'cloud', 0.2)

# Remove sparse terms from the term-documnet matrix
tweets2_tdm <- removeSparseTerms(tweets_tdm, sparse=0.92)

# Convert the term-document matrix to a data frame
# errata: add the 'inspect' call here.  Thanks to John Whitehouse.
tweets2_df <- as.data.frame(inspect(tweets2_tdm))

# scale the data
tweets2_df_scale <- scale(tweets2_df)

# Create the distance matrix
tweets_dist <- dist(tweets2_df_scale, method="euclidean")

# Cluster the data
tweets_fit <- hclust(tweets_dist, method="ward")

#Visualize the result
plot(tweets_fit, main="Cluster - Big Data")

# An example with five (k=5) clusters (assumes your data has at least 5 terms!)
groups <- cutree(tweets_fit, k=5)
# Dendrogram wiht blue clusters (k=5)
rect.hclust(tweets_fit, k=5, border="blue")