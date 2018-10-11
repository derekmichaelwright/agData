#' addCanadaInfo.
#'
#' Adds Canada information to agData STATCAN datasets. Uses agData_STATCAN_Region_Table.
#' @param x dataset.
#' @return Table with region info added
#' @export
#' @examples
#' xx <- agData_STATCAN_Crops %>% addCanadaInfo()

addCanadaInfo <- function(x) {
  library(dplyr)
  x <- left_join(x, select(agData_STATCAN_Region_Table, Area = Province, Lat, Lon), by = "Area")
  x
}
