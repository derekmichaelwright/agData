#' FAO Country Table
#' A table of country info from FAOSTAT.
#' @section Helpful Codes:
#' \itemize{
#'   \item unique(agData_FAO_Country_Table$Name)
#'   \item unique(agData_FAO_Country_Table$Region)
#'   \item unique(agData_FAO_Country_Table$SubRegion)
#' }
#' @source http://www.fao.org/faostat/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Country_Table
NULL
#' FAO Region Table
#' A table of Region info from FAOSTAT.
#' @section Helpful Codes:
#' \itemize{
#'   \item unique(agData_FAO_Region_Table$Region)
#'   \item unique(agData_FAO_Region_Table$SubRegion)
#' }
#' @source http://www.fao.org/faostat/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Region_Table
NULL
#' FAO Crop Production Data
#' A dataset containing crop data from FAOSTAT.
#' @section Helpful Codes:
#' \itemize{
#'   \item levels(agData_FAO_Crops$Area)
#'   \item levels(agData_FAO_Crops$Item)
#'   \item addRegionInfo(agData_FAO_Crops)
#' }
#' @section Elements:
#' \itemize{
#'   \item Production     (tonnes)
#'   \item Area harvested (ha)
#'   \item Yield          (tonnes/ha)
#' }
#' @source http://www.fao.org/faostat/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Crops
NULL
#' FAO Livestock Data
#' A dataset containing livestock data from FAOSTAT.
#' @section Helpful Codes:
#' \itemize{
#'   \item levels(agData_FAO_Livestock$Area)
#'   \item levels(agData_FAO_Livestock$Item)
#'   \item addRegionInfo(agData_FAO_Livestock)
#' }
#' @section Elements:
#' \itemize{
#'   \item Stocks (head or 1000 head)
#' }
#' @source http://www.fao.org/faostat/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Livestock
NULL
#' FAO Land Use Data
#' A dataset containing land use data from FAOSTAT.
#' @section Items:
#' \itemize{
#'   \item levels(agData_FAO_LandUse$Area)
#'   \item levels(agData_FAO_LandUse$Item)
#'   \item addRegionInfo(agData_FAO_LandUse)
#' }
#' @section Elements:
#' \itemize{
#'   \item Area                           (1000 ha)
#'   \item Carbon stock in living biomass (million tonnes)
#' }
#' @source http://www.fao.org/faostat/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_LandUse
NULL
#' Statistics Canada - Region Info
#' A dataset of Region info for Canada.
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Region_Table
NULL
#' Statistics Canada - HoneyBee Data
#' A dataset from Statistics Canada on honeybee production.
#' @section Helpful Codes:
#' \itemize{
#'   \item levels(agData_STATCAN_Beehives$Area)
#'   \item add_Canada_Info(agData_STATCAN_Beehives)
#' }
#' @section Elements:
#' \itemize{
#'   \item Beekeepers         (number)
#'   \item Colonies           (number)
#'   \item Colonies/Beekeeper (number)
#'   \item Production         (1000 kg)
#'   \item Yield              (kg/Colony)
#'   \item Value              (1000 $)
#' }
#' @section Table: 32-10-0353-01 (formerly CANSIM 001-0007)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035301
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Beehives
NULL
#' Crops Statistics Canada Data
#' A dataset from Statistics Canada on crop production.
#' @section Helpful Codes:
#' \itemize{
#'   \item levels(agData_STATCAN_Crops$Area)
#'   \item levels(agData_STATCAN_Crops$Item)
#'   \item add_Canada_Info(agData_STATCAN_Crops)
#' }
#' @section Elements:
#' \itemize{
#'   \item Production         (tonnes)
#'   \item Area seeded        (ha)
#'   \item Area harvested     (ha)
#'   \item Yield              (tonnes/ha)
#'   \item Average farm price (dollars per tonne)
#' }
#' @section Table: ?
#' @source https://www150.statcan.gc.ca/
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Crops
NULL
#' Statistics Canada Livestock Data
#' A dataset from Statistics Canada on livestock production.
#' @section Helpful Codes:
#' \itemize{
#'   \item levels(agData_STATCAN_Livestock$Area)
#'   \item levels(agData_STATCAN_Livestock$Item)
#'   \item add_Canada_Info(agData_STATCAN_Livestock)
#' }
#' @section Element:
#' \itemize{
#'   \item Average number of animals (Number)
#'   \item Number of animals         (Number)
#'   \item Number of farms reporting (Number)
#' }
#' @section Table: ?
#' @source https://www150.statcan.gc.ca/
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Livestock
NULL
#' USDA Crop Data
#' A dataset from the USDA on crop production.
#' @section Item:
#' \itemize{
#'   \item Barley
#'   \item Maize
#'   \item Oats
#'   \item Sorghum
#'   \item Wheat
#' }
#' @section Element:
#' \itemize{
#'   \item Production     (tonnes)
#'   \item Area seeded    (ha)
#'   \item Area harvested (ha)
#'   \item Yield          (tonnes/ha)
#' }
#' @source https://www.nass.usda.gov/
#' @docType data
#' @keywords datasets
#' @name agData_USDA_Crops
NULL
