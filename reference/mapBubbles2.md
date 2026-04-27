# mapBubbles2

function to produce bubble plots on a map, size and colour determined by
attribute data

## Usage

``` r
mapBubbles2(
  dF = "",
  nameX = "longitude",
  nameY = "latitude",
  nameZSize = "",
  nameZColour = "",
  nameZFill = "",
  colourPalette = "heat",
  fillPalette = "heat",
  pch = 21,
  symbolSize = 1,
  maxZVal = NA,
  main = nameZSize,
  numCats = 5,
  catMethod = "categorical",
  xlim = NA,
  ylim = NA,
  mapRegion = "world",
  borderCol = "grey",
  oceanCol = NA,
  landCol = NA,
  addLegend = TRUE,
  legendBg = "white",
  legendVals = "",
  legendPos = "bottomright",
  legendHoriz = FALSE,
  legendTitle = nameZSize,
  addColourLegend = TRUE,
  colourLegendPos = "bottomleft",
  colourLegendTitle = nameZColour,
  add = FALSE,
  plotZeroVals = TRUE,
  lwd = 0.5,
  lwdSymbols = 1,
  ...
)
```

## Arguments

- dF:

  data frame or SpatialPolygonsDataFrame

- nameX:

  name of column containing the X variable (longitude), not needed if dF
  is a SpatialPolygonsDataFrame

- nameY:

  name of column containing the Y variable (lattitude), not needed if dF
  is a SpatialPolygonsDataFrame

- nameZSize:

  name of column containing numeric variable to set symbol size

- nameZColour:

  name of column containing variable to set symbol colour

- nameZFill:

  background fill for points if using certain pch

- colourPalette:

  a string describing the colour palette to use, choice of :

  1.  ="palette" for the current palette

  2.  a vector of valid colours, e.g. =c('red','white','blue') or output
      from RColourBrewer

  3.  = one of "heat", "diverging", "white2Black", "black2White",
      "topo", "rainbow", "terrain", "negpos8", "negpos9"

- fillPalette:

  a string describing the colour palette to use, choice of :

  1.  ="palette" for the current palette

  2.  a vector of valid colours, e.g. =c('red','white','blue') or output
      from RColourBrewer

  3.  = one of "heat", "diverging", "white2Black", "black2White",
      "topo", "rainbow", "terrain", "negpos8", "negpos9"

- pch:

  symbol type, default of 21 for circles, will work with other filled
  symbol types e.g. 22=square, 23=diamond, 24=triangle

- symbolSize:

  multiplier of default symbol size

- maxZVal:

  the attribute value corresponding to the maximum symbol size, this can
  be used to set the scaling the same between multiple plots

- main:

  title for the map, set to nameZSize by default

- numCats:

  number of categories to put the data in, may be modified if this
  number is incompatible with the catMethod chosen

- catMethod:

  method for categorisation of data "pretty", "fixedWidth", "diverging",
  "logFixedWidth", "quantiles", "categorical", or a numeric vector
  defining breaks

- xlim:

  map extents c(west,east), can be overidden by mapRegion

- ylim:

  map extents c(south,north), can be overidden by mapRegion

- mapRegion:

  a country name from getMap()\$NAME or
  'world','africa','oceania','eurasia','uk' sets map extents, overrides
  xlim,ylim

- borderCol:

  the colour for country borders

- oceanCol:

  a colour for the ocean

- landCol:

  a colour to fill countries

- addLegend:

  whether to add a legend for symbol sizes

- legendBg:

  background colour for the legend, NA=transparent

- legendVals:

  allows user to set values and hence symbol sizing in legend

- legendPos:

  positioning of legend e.g. 'bottomleft', 'topright'

- legendHoriz:

  whether to arrange legend elements horizontally TRUE/FALSE

- legendTitle:

  title for the symbol size legend

- addColourLegend:

  whether to add a legend for symbol colour

- colourLegendPos:

  positioning of colour legend e.g. 'bottomleft', 'topright'

- colourLegendTitle:

  title for the colour size legend

- add:

  whether to add the symbols to an existing map, TRUE/FALSE

- plotZeroVals:

  whether to plot zero values as a cross, TRUE/FALSE

- lwd:

  line width for country borders

- lwdSymbols:

  line width for symbols

- ...:

  any extra arguments to points()

## Value

currently doesn't return anything

## Details

The function will produce a map with bubbles (circles) centred on
country centroids (or other chosen points). Bubbles can be sized and
coloured according to specified attribute values.

By default separate legends are added fro symbol size and colouring on
either side of the plot, these can be modified by altering legend
parameters.
