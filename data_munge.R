## function: For each file call loadTweets_df and add that result to a master df.
## something like bind_rows(master_df, loadTweets_df(file)) return master_df

loadTweets_df <- function(file){
  load(file)
  tweets_df <- do.call(rbind, lapply(tweets, as.data.frame))
  return(tweets_df)
}