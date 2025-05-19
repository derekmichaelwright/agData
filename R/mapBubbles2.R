#' mapBubbles2
#'
#' function to produce bubble plots on a map, size and colour determined by attribute data
#'
#' The function will produce a map with bubbles (circles) centred on country centroids (or other chosen points). Bubbles can be sized and coloured according to specified attribute values.
#'
#' By default separate legends are added fro symbol size and colouring on either side of the plot, these can be modified by altering legend parameters.
#'
#' @param dF data frame or SpatialPolygonsDataFrame
#' @param nameX name of column containing the X variable (longitude), not needed if dF is a SpatialPolygonsDataFrame
#' @param nameY name of column containing the Y variable (lattitude), not needed if dF is a SpatialPolygonsDataFrame
#' @param nameZSize name of column containing numeric variable to set symbol size
#' @param nameZColour name of column containing variable to set symbol colour
#' @param nameZFill background fill for points if using certain pch
#' @param pch symbol type, default of 21 for circles, will work with other filled symbol types e.g. 22=square, 23=diamond, 24=triangle
#' @param symbolSize multiplier of default symbol size
#' @param maxZVal the attribute value corresponding to the maximum symbol size, this can be used to set the scaling the same between multiple plots
#' @param main title for the map, set to nameZSize by default
#' @param numCats number of categories to put the data in, may be modified if this number is incompatible with the catMethod chosen
#' @param catMethod method for categorisation of data "pretty", "fixedWidth", "diverging", "logFixedWidth", "quantiles", "categorical", or a numeric vector defining breaks
#' @param colourPalette a string describing the colour palette to use, choice of :
#' \enumerate{
#' \item ="palette" for the current palette
#' \item a vector of valid colours, e.g. =c('red','white','blue') or output from RColourBrewer
#' \item = one of "heat", "diverging", "white2Black", "black2White", "topo", "rainbow", "terrain", "negpos8", "negpos9" }
#' @param fillPalette a string describing the colour palette to use, choice of :
#' \enumerate{
#' \item ="palette" for the current palette
#' \item a vector of valid colours, e.g. =c('red','white','blue') or output from RColourBrewer
#' \item = one of "heat", "diverging", "white2Black", "black2White", "topo", "rainbow", "terrain", "negpos8", "negpos9" }
#' @param xlim map extents c(west,east), can be overidden by mapRegion
#' @param ylim map extents c(south,north), can be overidden by mapRegion
#' @param mapRegion a country name from getMap()$NAME or 'world','africa','oceania','eurasia','uk' sets map extents, overrides xlim,ylim
#' @param borderCol the colour for country borders
#' @param oceanCol a colour for the ocean
#' @param landCol a colour to fill countries
#' @param addLegend whether to add a legend for symbol sizes
#' @param legendBg background colour for the legend, NA=transparent
#' @param legendVals allows user to set values and hence symbol sizing in legend
#' @param legendPos positioning of legend e.g. 'bottomleft', 'topright'
#' @param legendHoriz whether to arrange legend elements horizontally TRUE/FALSE
#' @param legendTitle title for the symbol size legend
#' @param addColourLegend whether to add a legend for symbol colour
#' @param colourLegendPos positioning of colour legend e.g. 'bottomleft', 'topright'
#' @param colourLegendTitle title for the colour size legend
#' @param add whether to add the symbols to an existing map, TRUE/FALSE
#' @param plotZeroVals whether to plot zero values as a cross, TRUE/FALSE
#' @param lwd line width for country borders
#' @param lwdSymbols line width for symbols
#' @param \dots any extra arguments to points()
#' @return currently doesn't return anything
#' @export

mapBubbles2 <- function (dF = "", nameX = "longitude", nameY = "latitude",
                         nameZSize = "", nameZColour = "", nameZFill = "",
                         colourPalette = "heat", fillPalette = "heat",
                         pch = 21, symbolSize = 1, maxZVal = NA, main = nameZSize,
                         numCats = 5, catMethod = "categorical",
                         xlim = NA, ylim = NA, mapRegion = "world", borderCol = "grey",
                         oceanCol = NA, landCol = NA, addLegend = TRUE, legendBg = "white",
                         legendVals = "", legendPos = "bottomright", legendHoriz = FALSE,
                         legendTitle = nameZSize, addColourLegend = TRUE, colourLegendPos = "bottomleft",
                         colourLegendTitle = nameZColour, add = FALSE, plotZeroVals = TRUE,
                         lwd = 0.5, lwdSymbols = 1, ...) {
  functionName <- as.character(sys.call()[[1]])
  if (class(dF) == "character" && dF == "") {
    message(paste("using example data because no file specified in",
                  functionName))
    dF = getMap()@data
    nameX = "LON"
    nameY = "LAT"
    if (nameZSize == "") { nameZSize = "POP_EST" }
    if (nameZColour == "") { nameZColour = "continent" }
  }
  if (class(dF) == "SpatialPolygonsDataFrame") {
    centroidCoords <- coordinates(dF)
    dF[["nameX"]] <- centroidCoords[, 1]
    dF[["nameY"]] <- centroidCoords[, 2]
    nameX <- "nameX"
    nameY <- "nameY"
    if (!add) {
      rwmNewMapPlot(mapToPlot = dF, oceanCol = oceanCol,
                    mapRegion = mapRegion, xlim = xlim, ylim = ylim)
      plot(dF, add = TRUE, border = borderCol, col = landCol,
           main = main, lwd = lwd)
    }
    dF <- dF@data
  } else if (!add) {
    rwmNewMapPlot(mapToPlot = getMap(), oceanCol = oceanCol,
                  mapRegion = mapRegion, xlim = xlim, ylim = ylim)
    sp::plot(getMap(), add = TRUE, border = borderCol, col = landCol,
         main = main, lwd = lwd)
  }
  #
  singleColour <- FALSE
  if (nameZColour == "") { nameZColour <- "black" }
  if (is.na(match(nameZColour, names(dF)))) {
    if (!tryCatch(is.matrix(col2rgb(nameZColour)), error = function(e) FALSE)) {
      stop("your chosen nameZColour :'", nameZColour,
           "' is not a colour and seems not to exist in your data, columns = ",
           paste(names(dF), ""))
      return(FALSE)
    } else { singleColour <- TRUE }
  }
  cutVector <- colourVector <- NA
  if (!singleColour) {
    dataCategorised <- dF[, nameZColour]
    if (!is.numeric(dataCategorised) && catMethod != "categorical") {
      catMethod = "categorical"
      message(paste("using catMethod='categorical' for non numeric data in",
                    functionName))
    }
    if (length(catMethod) == 1 && catMethod == "categorical") {
      dataCategorised <- as.factor(dataCategorised)
      cutVector <- levels(dataCategorised)
      if (length(cutVector) > 15) { warning("with catMethod='categorical' you have > 15 categories, you may want to try a different catMethod, e.g. quantile") }
      } else {
        if (is.character(catMethod) == TRUE) {
          cutVector <- rwmGetClassBreaks(dataCategorised,
                                         catMethod = catMethod, numCats = numCats, verbose = TRUE)
          } else if (is.numeric(catMethod) == TRUE) { cutVector <- catMethod }
      dataCategorised <- cut(dataCategorised, cutVector, include.lowest = TRUE)
      func <- function(x, y) c(paste(x, "-", y[1 + which(y == x)], sep = ""))
      tmp <- sapply(cutVector, cutVector, FUN = func)
      cutVector <- tmp[1:length(tmp) - 1]
    }
    colNameRaw <- nameZColour
    colNameCat <- paste(colNameRaw, "categorised", sep = "")
    dF[[colNameCat]] <- dataCategorised
    numColours <- length(levels(dataCategorised))
    colourVector <- rwmGetColours(colourPalette, numColours)
    dataCatNums <- as.numeric(dataCategorised)
  }
  #
  singleFill <- FALSE
  if (nameZFill == "") { nameZFill <- "red" }
  if (is.na(match(nameZFill, names(dF)))) {
    if (!tryCatch(is.matrix(col2rgb(nameZFill)), error = function(e) FALSE)) {
      stop("your chosen nameZFill :'", nameZFill,
           "' is not a Fill and seems not to exist in your data, columns = ",
           paste(names(dF), ""))
      return(FALSE)
    } else { singleFill <- TRUE }
  }
  cutVector <- fillVector <- NA
  if (!singleFill) {
    dataCategorised <- dF[, nameZFill]
    if (!is.numeric(dataCategorised) && catMethod != "categorical") {
      catMethod = "categorical"
      message(paste("using catMethod='categorical' for non numeric data in",
                    functionName))
    }
    if (length(catMethod) == 1 && catMethod == "categorical") {
      dataCategorised <- as.factor(dataCategorised)
      cutVector <- levels(dataCategorised)
      if (length(cutVector) > 15) { warning("with catMethod='categorical' you have > 15 categories, you may want to try a different catMethod, e.g. quantile") }
    } else {
      if (is.character(catMethod) == TRUE) {
        cutVector <- rwmGetClassBreaks(dataCategorised,
                                       catMethod = catMethod, numCats = numCats, verbose = TRUE)
      } else if (is.numeric(catMethod) == TRUE) { cutVector <- catMethod }
      dataCategorised <- cut(dataCategorised, cutVector,
                             include.lowest = TRUE)
      func <- function(x, y) c(paste(x, "-", y[1 + which(y == x)], sep = ""))
      tmp <- sapply(cutVector, cutVector, FUN = func)
      cutVector <- tmp[1:length(tmp) - 1]
    }
    colNameRaw <- nameZFill
    colNameCat <- paste(colNameRaw, "categorised", sep = "")
    dF[[colNameCat]] <- dataCategorised
    numFills <- length(levels(dataCategorised))
    fillVector <- rwmGetColours(fillPalette, numFills)
    dataCatNums <- as.numeric(dataCategorised)
  }
  #
  if (singleColour) { col = nameZColour
  } else { col = colourVector[dataCatNums] }
  #
  if (singleFill) { bg = nameZFill
  } else {bg = fillVector[dataCatNums] }
  #
  if (is.na(maxZVal)) { maxZVal <- max(dF[, nameZSize], na.rm = TRUE) }
  fMult = symbolSize * 4/sqrt(maxZVal)
  cex = fMult * sqrt(dF[, nameZSize])
  points(dF[, nameX], dF[, nameY], pch = pch, cex = cex, col = col,
         bg = bg, lwd = lwdSymbols)
  if (addLegend && sum(as.numeric(abs(dF[, nameZSize])), na.rm = TRUE) != 0) {
    if (length(legendVals) > 1) {
      legendSymbolSizes <- fMult * sqrt(legendVals)
    } else {
      sigFigs <- 3
      maxVal <- max(dF[, nameZSize], na.rm = TRUE)
      minVal <- min(dF[, nameZSize], na.rm = TRUE)
      legendVals <- c(signif(minVal, sigFigs), signif(minVal + 0.5 * (maxVal - minVal), sigFigs), signif(maxVal, sigFigs))
      legendSymbolSizes <- fMult * sqrt(legendVals)
    }
    legendSymbolChars = c(pch, pch, pch)
    colour4LegendPoints <- "black"
    if (plotZeroVals && legendSymbolSizes[1] == 0) {
      legendSymbolSizes[1] <- 1
      legendSymbolChars[1] <- 3
    }
    x.intersp = symbolSize * 1.3
    y.intersp = symbolSize * 1.3
    legend(x = legendPos, legend = legendVals, pt.cex = legendSymbolSizes,
           pch = legendSymbolChars, col = colour4LegendPoints,
           bg = legendBg, title = legendTitle, horiz = legendHoriz,
           y.intersp = y.intersp, x.intersp = x.intersp)
  }
  if (addColourLegend && !singleColour) {
    addMapLegendBoxes(colourVector = colourVector, cutVector = cutVector,
                      x = colourLegendPos, title = colourLegendTitle)
  }
  invisible(list(colourVector = colourVector, cutVector = cutVector))
}
