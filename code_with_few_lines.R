
library(tidyverse)

colors <- c("#DF2935", "#86BA90", "#F5F3BB", "#DFA06E", "#412722")

seq(-5, 5, by = 0.012) %>%
    expand.grid(x = ., y = .) %>%
    ggplot(aes(x = (1 + y + y^2 - (exp(1))^3), 
               y = (1 - x - x^2 - sin(y^3)))) +
    geom_point(alpha = 0.05,
               shape = 20,
               size = 1) +
    theme_void() +
    coord_polar()

#This is the clock.

seq(-4, 4, by = 0.012) %>%
    expand.grid(x = ., y = .) %>%
    ggplot(aes(x = (1 - sin(y^2)), 
               y = (1 + y - cos(x^2)))) +
    geom_point(alpha = 0.03,
               shape = 20,
               size = 0,
               #col = "red"
               ) +
    theme_void() +
    coord_polar()



    