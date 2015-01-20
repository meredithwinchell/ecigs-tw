load("tweets_data_20150101.Rdata")
Jan1 <- tweets
Jan1_df <- do.call(rbind, lapply(Jan1, as.data.frame))
load("tweets_data_20150102.Rdata")
Jan2 <- tweets
Jan2_df <- do.call(rbind, lapply(Jan2, as.data.frame))
load("tweets_data_20150103.Rdata")
Jan3 <- tweets
Jan3_df <- do.call(rbind, lapply(Jan3, as.data.frame))
load("tweets_data_20150104.Rdata")
Jan4 <- tweets
Jan4_df <- do.call(rbind, lapply(Jan4, as.data.frame))
load("tweets_data_20150105.Rdata")
Jan5 <- tweets
Jan5_df <- do.call(rbind, lapply(Jan5, as.data.frame))
load("tweets_data_20150106.Rdata")
Jan6 <- tweets
Jan6_df <- do.call(rbind, lapply(Jan6, as.data.frame))
load("tweets_data_20150107.Rdata")
Jan7 <- tweets
Jan7_df <- do.call(rbind, lapply(Jan7, as.data.frame))