# class notes 9.3

library(tidyverse)

glimpse(penguins)
?penguins
view(penguins)

# in general, only add a third variable using color or similar

ggplot(penguins, aes(x=bill_len, y = bill_dep, color = species )) +
  geom_smooth() +
  geom_point() +
  labs( x = "Bill Length", 
        y = "Bill Width",
        title = "Penguin Size Matters",
        subtitle = "Look at my cool plot!",
        caption = "Source: Kaye, E., Turner, H., Gorman, K. B., Horst, A. M. and Hill, A. P. (2025) Preparing the Palmer Penguins Data for the datasets Package in R. doi:10.5281/zenodo.14902740.") +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal()
