agData Wheat Vignette
================
Derek Michael Wright <derek.wright@usask.ca>
2018-10-26

``` r
# devtools::install_github("derekmichaelwright/agData")
library(agData)
library(tidyverse)
```

Wheat production in India and Mexico
------------------------------------

Spurred by pioneers such as Norman Bourlag, Wheat production in Mexico and India increased significantly since 1961. During that same time period, the area devoted to wheat production has remained relativly constant. This increase in wheat yields has helped these countries avoid some major food security problems.

``` r
# Prep data
xx <- agData_FAO_Crops %>% 
  filter(Crop == "Wheat", 
         Area == "Mexico")
# Plot
ggplot(xx %>% filter(Measurement != "Yield"), aes(x = Year, y = Value / 1000000, color = Measurement)) +
  geom_line(size = 1.5) +
  theme(legend.position = "bottom") +
  scale_color_manual(name   = NULL,
                     labels = c("Area Harvested (hectares)", "Production (tonnes)"),
                     values = c("Dark Green", "darkgoldenrod2")) +
  scale_x_continuous(breaks       = seq(1960, 2015, by = 5),
                     minor_breaks = seq(1960, 2015, by = 5)) +
  
  labs(title   = "Wheat Production in Mexico",
       caption = "Data: www.fao.org/faostat/",
       y       = "Million",
       x       = NULL)
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-2-1.png)

``` r
# Plot
ggplot(xx %>% filter(Measurement =="Yield"), aes(x = Year, y = Value) ) +
  geom_line(size = 1.5, color = "Dark Blue") +
  scale_x_continuous(breaks       = seq(1960, 2015, by = 5),
                     minor_breaks = seq(1960, 2015, by = 5)) +
  labs(title   = "Wheat Yields in Mexico",
       caption = "Data: www.fao.org/faostat/",
       y       = "Tonnes / Hectare", 
       x       = NULL)
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-2-2.png)

``` r
# Prep data
xx <- agData_FAO_Crops %>% 
  filter(Crop == "Wheat", 
         Area == "India")
# Plot
ggplot(xx %>% filter(Measurement != "Yield"), aes(x = Year, y = Value / 1000000, color = Measurement)) +
  geom_line(size = 1.5) +
  theme(legend.position = "bottom") +
  scale_color_manual(name   = NULL,
                     labels = c("Area Harvested (hectares)", "Production (tonnes)"),
                     values = c("Dark Green", "darkgoldenrod2")) +
  scale_x_continuous(breaks       = seq(1960, 2015, by = 5),
                     minor_breaks = seq(1960, 2015, by = 5)) +
  
  labs(title   = "Wheat Production in India",
       caption = "Data: www.fao.org/faostat/",
       y       = "Million",
       x       = NULL)
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-2-3.png)

``` r
# Plot
ggplot(xx %>% filter(Measurement =="Yield"), aes(x = Year, y = Value) ) +
  geom_line(size = 1.5, color = "Dark Blue") +
  scale_x_continuous(breaks       = seq(1960, 2015, by = 5),
                     minor_breaks = seq(1960, 2015, by = 5)) +
  labs(title   = "Wheat Yields in India",
       caption = "Data: www.fao.org/faostat/",
       y       = "Tonnes / Hectare", 
       x       = NULL)
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-2-4.png)

Wheat and Maize Yields in Germany vs Europe
-------------------------------------------

Germany...

``` r
# Prep data
xx <- agData_FAO_Crops %>% 
  filter(Area %in% c("Germany", "Europe"),
         Crop %in% c("Maize", "Wheat"),
         Measurement == "Yield") %>%
  mutate(Area = factor(Area, levels = c("Germany", "Europe")))
# Plot
ggplot(xx, aes(x = Year, y = Value, color = Area)) +
  geom_line() +
  geom_smooth(method = "loess") +
    facet_grid(Crop~., scales = "free_y") + 
  scale_color_manual(values = c("darkgreen", "darkblue"))
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-3-1.png)

Example 7: USDA Maize vs Wheat yields
-------------------------------------

Maize yeilds have increased on a much faster pace than wheat, in part due to the adoption of hybrid seed in Maize.

``` r
# Prep data
xx <- agData_USDA_Crops %>%
  filter(Crop %in% c("Maize", "Wheat"),
         Measurement == "Yield") %>%
  mutate(Era = ifelse(Year <= 1940, "Pre-1940", "Post-1940"),
         Era = factor(Era, levels = c("Pre-1940", "Post-1940")))
# 
x2 <- xx %>% 
  group_by(Era) %>% 
  summarise(min = min(Year), max = max(Year))
#
c1 <- round(summary(lm(data = xx %>% filter(Crop=="Maize",Era=="Post-1940"), Value~Year))$coefficients[2], 2)
c2 <- round(summary(lm(data = xx %>% filter(Crop=="Wheat",Era=="Post-1940"), Value~Year))$coefficients[2], 2)
# Plot
ggplot(xx) +
  geom_line(aes(x = Year, y = Value, color = Crop)) +
  geom_point(aes(x = Year, y = Value, color = Crop, shape = Era)) +
  geom_smooth(data = xx %>% filter(Crop == "Wheat"),
              method = "lm", se = F, colour = "Black", aes(x = Year, y = Value, group = Era)) +
  geom_smooth(data = xx %>% filter(Crop == "Maize"),
              method = "lm", se = F, colour = "Black", aes(x = Year, y = Value, group = Era)) +
  geom_rect(data = x2, aes(xmin = min-0.5, xmax = max+0.5, ymin = -Inf, ymax = Inf, fill = Era), alpha = 0.1) +
  annotate("text", x = 1985, y = 4.5, size = 5, label = paste("m =", c1)) +
  annotate("text", x = 1985, y = 1, size = 5, label = paste("m =", c2)) +
  scale_x_continuous(breaks       = seq(1865, 2015, by = 10),
                     minor_breaks = seq(1865, 2015, by = 10),
                     expand = c(0,0)) +
  scale_color_manual(values = c("darkgreen", "darkgoldenrod2")) +
  scale_fill_manual(values = c("darkgreen", "darkgoldenrod2")) +
  theme(legend.position = "bottom") +
  labs(title = "Maize and Wheat Yield in the USA",
       y = "tonnes/ha", x = NULL)
```

![](agDataVignette_Wheat_files/figure-markdown_github/unnamed-chunk-4-1.png)

------------------------------------------------------------------------