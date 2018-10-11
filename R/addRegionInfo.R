#' addRegionInfo.
#'
#' Adds region information to agData datasets. Uses both agData_FAO_Country_Table and agData_FAO_Region_Table.
#' @param x dataset.
#' @return Table with region info added
#' @export
#' @examples
#' xx <- agData_FAO_Crops %>% addRegionInfo()

addRegionInfo <- function(x) {
  regions <- dplyr::bind_rows(agData_FAO_Country_Table, agData_FAO_Region_Table)
  x <- dplyr::left_join(x, select(regions, Area = FAO_TABLE_NAME, Region, SubRegion, DVDDVG, Lat, Lon), by = "Area")
  x
}