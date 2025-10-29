# class notes 8/29/25

library(tidyverse)
library(readxl)

scooby <- read_excel("scooby.xlsx")

#playing with the ggplot function

# chart a histogram for imdb ratings to see what the distribution is like

ggplot(scooby, aes(x = imdb)) + 
  geom_histogram()

ggplot(scooby, aes(x = imdb)) + 
  geom_histogram(binwidth = .5, 
                 color = "red", 
                 fill = "pink")

colors()

ggplot(scooby, aes(x = imdb)) + 
  geom_histogram(binwidth = .5, 
                 color = "red", 
                 fill = "pink") +
  labs(x = "IMDB", 
       y = "frequency",
       title = "Scooby-Doo Ratings") +
  theme_minimal()

ggplot(scooby, aes(x = imdb)) + 
  geom_freqpoly()

ggplot(scooby, aes(x = imdb)) + 
  geom_density()

ggplot(scooby, aes(x = imdb)) + 
  geom_freqpoly(color = "red") +
  geom_histogram(alpha = .5)

ggplot(scooby, aes(x = format)) +
  geom_bar(color = "darkgreen", +
             fill = "yellowgreen") +
  labs(x = "Format",
       y = "IDK")

ggplot(scooby, aes(x = format)) +
  geom_bar()

ggplot(scooby, aes(x = format)) +
  geom_bar(fill = "darkgreen") +
  labs(x = "Format",
       y = "IDK")

ggplot(scooby, aes(x = format,
                   fill = format)) +
  geom_bar() +
  labs(x = "Format",
       y = "IDK",
       fill = "Format")

ggplot(scooby, aes(x = date_aired,
                   y = imdb,
                   color = network)) +
  geom_point()
