agData gganimate Vignette
================
Derek Michael Wright <derek.wright@usask.ca>
2018-10-26

``` r
# devtools::install_github("derekmichaelwright/agData")
library(agData)
library(tidyverse)
```

gganimate example
-----------------

``` r
library(gganimate)
# Prep data
xx <- agData_STATCAN_Beehives %>% 
  filter(Area    == "Canada",
         Measurement == "Colonies")
# Create GIF
mp <- ggplot(xx, aes(Year, Value / 1000, group = Area)) +
  geom_line() +
  labs(title = "Honeybee Colonies in Canada - {frame_along}",
       caption = "Data: www.statcan.gc.ca/",
       y = "Thousand Colonies") +
  transition_reveal(Area, Year)
mp <- animate(mp, fps = 5)
anim_save("anim.gif", mp)
```

------------------------------------------------------------------------
