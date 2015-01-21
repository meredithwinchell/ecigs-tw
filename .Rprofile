options(editor="TextEdit")

# R interactive prompt
options(prompt="> ")
options(continue="... ")

# to prefer Compiled HTML
options(chmhelp=TRUE)
# to prefer HTML help
options(htmlhelp=TRUE)

# General options
options(graphics.record=TRUE)

.First <- function(){
  library(devtools)
  library(knitr)
  library(markdown)
  library(dplyr)
  library(tidyr)
  library(twitteR)
  cat("\nWelcome! It's currently ", date(), "\n")
}

.Last <- function(){
  cat("\nGoodbye! It's now ", date(), "\n")
}
