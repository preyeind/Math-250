# This is a comment
# Notes from day 2 of class
5 + 7

# install tidyverse
install.packages("tidyverse")
library(tidyverse)

# read in scooby dataset

library(readxl)
scooby <- read_excel("scooby.xlsx")
View(scooby)
 
# Simple interactions with scooby

glimpse(scooby)

mean(run_time)

# this doesn't work bc the object doesn't exist

mean(scooby$run_time)
mean(scooby$imdb)

# this also doesn't work because there are N/As in the imdb variable
# N/A means there is no data
