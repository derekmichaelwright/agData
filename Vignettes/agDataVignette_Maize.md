agData Maize Vignette
================
Derek Michael Wright <derek.wright@usask.ca>
2018-10-26

``` r
# devtools::install_github("derekmichaelwright/agData")
library(agData)
library(tidyverse)
```

USDA maize
----------

The development of hybrid seed production in maize has led to major increases in crop yield in the United States.

``` r
# Prep data
xx <- agData_USDA_Crops %>% 
  filter(Crop == "Maize", Measurement == "Yield") %>%
  mutate(Era = ifelse(Year < 1937, "Open-Pollination",
                ifelse(Year < 1958, "Double-Cross Hybrids",
                 ifelse(Year < 1996, "Single-Cross Hybrids", "Biotech"))),
         Era = factor(Era, levels = c("Open-Pollination", "Double-Cross Hybrids", 
                                      "Single-Cross Hybrids", "Biotech")))
# Prep rect data
x2 <- xx %>% 
  group_by(Era) %>% 
  summarise(min = min(Year), max = max(Year))
# Calculate slopes
c1 <- round(summary(
  lm(data = xx%>%filter(Era=="Open-Pollination"), Value~Year))$coefficients[2], 3)
c2 <- round(summary(
  lm(data = xx%>%filter(Era=="Double-Cross Hybrids"), Value~Year))$coefficients[2], 3)
c3 <- round(summary(
  lm(data = xx%>%filter(Era=="Single-Cross Hybrids"), Value~Year))$coefficients[2], 3)
c4 <- round(summary(
  lm(data = xx%>%filter(Era=="Biotech"), Value~Year))$coefficients[2], 3)
# Create color palette
cols <- c("darkcyan", "darkgoldenrod2", "Forest Green", "Brown")
# Plot
ggplot(x2, aes(fill = Era)) +
  geom_rect(aes(xmin = min-0.5, xmax = max+0.5, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_line(data = xx, size = 1.5, aes(x = Year, y = Value, color = Era)) + 
  geom_point(data = xx, size = 3, aes(x = Year, y = Value, color = Era)) +
  geom_smooth(data = xx, method = "lm", se = F, colour = "Black", 
              aes(x = Year, y = Value)) +
  scale_color_manual(name = "Era:", values = cols, guide = F) +
  scale_fill_manual(name = "Era:", values = cols) +
  scale_x_continuous(breaks       = seq(1865, 2015, by = 10),
                     minor_breaks = seq(1865, 2015, by = 10)) +
  coord_cartesian(xlim = c(1865, 2018), ylim = c(0, 11.5), expand = c(0, 0)) +
  annotate("text", x = 1900, y = 0.75, size = 5, label = paste("m =", c1)) +
  annotate("text", x = 1947.5, y = 1.25, size = 5, label = paste("m =", c2)) +
  annotate("text", x = 1980, y = 4, size = 5, label = paste("m =", c3)) +
  annotate("text", x = 2005, y = 7.25, size = 5, label = paste("m =", c4)) +
  theme(legend.position = "bottom") +
  labs(title   = "Maize Yields in the United States",
       caption = "Data: www.ers.usda.gov/",
       y       = "Tonnes / Hectare",
       x       = NULL) 
```

![](agDataVignette_Maize_files/figure-markdown_github/unnamed-chunk-2-1.png)

USDA Maize vs Wheat yields
--------------------------

Maize yeilds have increased on a much faster pace than wheat, in part due to the adoption of hybrid seed in Maize.

``` r
# Prep data
xx <- agData_USDA_Crops %>%
  filter(Crop %in% c("Maize", "Wheat"),
         Measurement == "Yield") %>%
  mutate(Era = ifelse(Year <= 1940, "Pre-1940", "Post-1940"))
# 
x2 <- xx %>% 
  group_by(Era) %>% 
  summarise(min = min(Year), max = max(Year))
#
c1 <- round(summary(
  lm(data = xx%>%filter(Crop=="Maize",Era=="Post-1940"), Value~Year))$coefficients[2], 2)
c2 <- round(summary(
  lm(data = xx%>%filter(Crop=="Wheat",Era=="Post-1940"), Value~Year))$coefficients[2], 2)
# Plot
ggplot(xx) +
  geom_line(aes(x = Year, y = Value, color = Crop)) +
  geom_point(aes(x = Year, y = Value, color = Crop, shape = Era)) +
  geom_smooth(data = xx %>% filter(Crop == "Wheat"), method = "lm", 
              se = F, colour = "Black", aes(x = Year, y = Value, group = Era)) +
  geom_smooth(data = xx %>% filter(Crop == "Maize"), method = "lm", 
              se = F, colour = "Black", aes(x = Year, y = Value, group = Era)) +
  geom_rect(data = x2, alpha = 0.1,
            aes(xmin = min-0.5, xmax = max+0.5, ymin = -Inf, ymax = Inf, fill = Era)) +
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

![](agDataVignette_Maize_files/figure-markdown_github/unnamed-chunk-3-1.png)

Maize yields in the developed vs developing world
-------------------------------------------------

Maize yields in developing countries have lagged behind those in developed countries. This is due to a conbination of factors, including lack of access to crop inputs, machinery, and improved crop varieties.

``` r
# Get some Colors
cols <- c("Dark Blue", "darkgoldenrod2", "Dark Red", "Dark Green")
# Prep data
x1 <- agData_USDA_Crops %>% 
  filter(Crop    == "Maize", 
         Measurement == "Yield",
         Year != 2017)
x2 <- agData_FAO_Crops %>%
  filter(Crop    == "Maize",
         Measurement == "Yield",
         Area %in% c("Germany", "Mexico", "Africa"))
xx <- bind_rows(x1, x2) %>%
  mutate(Area = factor(Area, levels = c("USA", "Germany", "Mexico", "Africa")))
xE <- xx %>% top_n(1, Year) %>% pull(Value)
# Plot
ggplot(xx, aes(x = Year, y = Value, color = Area)) +
  geom_line(size = 1.5) +
  theme(legend.position = "bottom") +
  scale_color_manual(values = cols) + 
  scale_x_continuous(breaks       = seq(1865, 2015, by = 10),
                     minor_breaks = seq(1865, 2015, by = 10),
                     expand = c(0, 0)) +
  scale_y_continuous(sec.axis = sec_axis(~ ., breaks = xE)) +
  labs(title   = "Maize Yields - Developed vs Developing World",
       caption = "Data: www.ers.usda.gov/",
       y       = "Tonnes / Hectare",
       x       = NULL)
```

![](agDataVignette_Maize_files/figure-markdown_github/unnamed-chunk-4-1.png)

------------------------------------------------------------------------