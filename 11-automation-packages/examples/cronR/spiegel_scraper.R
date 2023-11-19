#!/usr/local/bin/Rscript
library(tidyverse)
library(magrittr)
library(httr)
setwd("/Users/simonmunzert/Munzert Dropbox/Simon Munzert/github/intro-to-data-science-23/lectures/11-automation-packages/examples/cronR")
url <- "http://www.spiegel.de/schlagzeilen/"
url_out <- GET(url, add_headers(from = "eddie@datacollection.com"))
datetime <- str_replace_all(Sys.time(), "[ :]", "-")
content(url_out, as = "text") %>% write(file = str_c("spiegelHeadlines/headlines-spiegel-", datetime, ".html"))
