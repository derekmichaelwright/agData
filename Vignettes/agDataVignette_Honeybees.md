agData Honeybee Vignette
================
Derek Michael Wright <derek.wright@usask.ca>
2018-10-26

``` r
# devtools::install_github("derekmichaelwright/agData")
library(agData)
library(tidyverse)
```

FAO and STATCAN honeybee data
-----------------------------

Neonicotinoids are often blamed for honeybee declines, but the data suggests a more complicated story.

``` r
# Prep data
areas <- c("World", "Europe", "Northern America", "South America", "Africa", "Asia")
xx <- agData_FAO_Livestock %>% 
  filter(Animal == "Beehives") %>%
  mutate(Era = ifelse(Year >= 1994, "NeoNic", "Pre-NeoNic"),
         Era = factor(Era, levels = c("Pre-NeoNic", "NeoNic") ) ) %>%
  filter(Area %in% areas) %>% 
  mutate(Area = factor(Area, levels = areas))
# Plot
ggplot(data = xx, aes(x = Year, y = Value / 1000000)) + 
  geom_line() + geom_line(aes(color = Era), size = 1.25) +
  facet_grid(Area ~ ., scales = "free_y") + #labeller = label_wrap_gen(width = 10)
  theme(legend.position = "bottom") +
  scale_color_manual(values = c("darkgoldenrod2", "Dark Green")) +
  scale_x_continuous(breaks = seq(1960, 2015, by = 5)) + 
  coord_cartesian(xlim = c(1962, 2013)) +
  annotate("rect", xmin = 1940, xmax = 1993.5, ymin = -Inf, ymax = Inf, fill = "Dark Green",     alpha = 0.1) +
  annotate("rect", xmin = 1993.5, xmax = 2035, ymin = -Inf, ymax = Inf, fill = "darkgoldenrod2", alpha = 0.1) +
  labs(title = "HoneyBee Colonies",
       caption = "Data: www.fao.org/faostat/",
       y = "Stocks (Millions)",
       x = NULL)
```

![](agDataVignette_Honeybees_files/figure-markdown_github/unnamed-chunk-2-1.png)

``` r
# Prep data
levs <- c("Beekeepers", "Colonies", "Colonies/Keeper",  "Production", "Yield", "Value")
xx <- agData_STATCAN_Beehives %>%
  filter(Area == "Canada") %>%
  select(-Unit) %>% 
  spread(Measurement, Value) %>%
  mutate(Colonies = Colonies / 1000,
         Production = Production / 1000000,
         Beekeepers = Beekeepers / 1000) %>% 
  gather("Measurement", "Value", Colonies, Production, Beekeepers, ColoniesPerBeekeeper, Yield, Value) %>%
  mutate(Measurement = plyr::mapvalues(Measurement, "ColoniesPerBeekeeper", "Colonies/Keeper"),
         Measurement = factor(Measurement, levels = levs),
         Unit = plyr::mapvalues(Measurement, levs, c("k","k","#","M tonnes","kg/Colony","M $")),
         Era = ifelse(Year >= 1994, "NeoNic", "Pre-NeoNic"),
         Era = factor(Era, levels = c("Pre-NeoNic", "NeoNic")))
#
ggplot(xx, aes(x = Year, y = Value)) + 
  geom_line() + 
  geom_line(aes(color = Era), size = 1.25) +
  facet_grid(Measurement + Unit ~ ., scales = "free", switch = "y") +
  scale_colour_manual(name = "Era:", values = c("darkgoldenrod2", "Dark Green")) +
  scale_x_continuous(breaks = seq(1925, 2015, by = 10)) + 
  coord_cartesian(xlim = c(min(xx$Year)+4, max(xx$Year)-4)) +
  annotate("rect", xmin = 1905, xmax = 1993.5, ymin = -Inf, ymax = Inf, fill = "Dark Green",     alpha = 0.1) +
  annotate("rect", xmin = 1993.5, xmax = 2035, ymin = -Inf, ymax = Inf, fill = "darkgoldenrod2", alpha = 0.1) +
  theme(strip.placement = "outside", legend.position = "bottom", axis.title.y = element_text(hjust = 0)) + 
  labs(title = "Canadian Honeybee Data", 
       caption = "Data: www.statcan.gc.ca/",
       y = NULL, x = NULL)
```

![](agDataVignette_Honeybees_files/figure-markdown_github/unnamed-chunk-3-1.png)

------------------------------------------------------------------------