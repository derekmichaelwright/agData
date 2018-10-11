#' spread_agData.
#'
#' spreads data. #x <- spread(x, Element, Value)
#' @param x dataset.
#' @return Table
#' @export
#' @examples
#' xx <- agData_FAO_Crops %>% agData_spread()

spread_agData <- function(x) {
  library(dplyr)
  x <- x %>% spread(Element, Value)
  x
}
