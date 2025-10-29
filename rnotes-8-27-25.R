# class notes wednesday

library(readxl)
scooby <- read_excel("scooby.xlsx")

mean(scooby$imdb)
?mean

mean(scooby$imdb, 
     na.rm = TRUE)

# which shows have the best imdb ratings?

library(tidyverse)

# every data science plot has three pieces of info needed
# 1) the data set
# 2) the variables of interest & where/how they're displayed
# 3) the sort of plot

ggplot(scooby, aes(x = series_name,
                   y = imdb)) +
  geom_boxplot()

ggplot(scooby, aes(y = series_name,
                   x = imdb)) +
  geom_boxplot()

# there is a warning saying 15 rows have been removed. these are the n/as
# this is important to remeber bc missing data could be the most important
# aes represents aesthetics. aesthetics refers to any visual aspect of
# the plot that is coming from the variables, not how the plot just looks