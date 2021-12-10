NULL
#' Statistics Canada - Region Info
#'
#' A dataset of Region info for Canada.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Lat
#'   \item Lon
#' }
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Region_Table
NULL
#' Statistics Canada - HoneyBee Data
#'
#' A dataset from Statistics Canada on honeybee production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Crop
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Beekeepers         (number)
#'   \item Colonies           (number)
#'   \item Colonies/Beekeeper (number)
#'   \item Production         (tonnes)
#'   \item Yield              (kg/colony)
#'   \item Value              (million $CAD)
#' }
#' @section Table: 32-10-0353-01 (formerly CANSIM 001-0007)
#' @source [https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035301](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035301)
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Beehives
NULL
#' Crops Statistics Canada Data
#'
#' A dataset from Statistics Canada on crop production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Crop
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Production         (tonnes)
#'   \item Area seeded        (hectares)
#'   \item Area harvested     (hectares)
#'   \item Yield              (tonnes/ha)
#'   \item Average farm price (dollars per tonne)
#' }
#' @section Table: 32-10-0359-01 (formerly CANSIM 001-0017)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210035901
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Crops
NULL
#' Crops Statistics Canada Data
#'
#' A dataset from Statistics Canada on crop aggregate data.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Crop
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Production         (tonnes)
#'   \item Area seeded        (hectares)
#'   \item Area harvested     (hectares)
#'   \item Yield              (tonnes/ha)
#'   \item Average farm price (dollars per tonne)
#' }
#' @section Table: 32-10-0359-01 (formerly CANSIM 001-0017)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210035901
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Crops2
NULL
#' Statistics Canada Farmland Data
#'
#' A dataset from Statistics Canada on farm land use.
#' @section Keys:
#' @section Measurement:
#' \itemize{
#'   \item Number of farms reporting
#'   \item Hectares
#' }
#' @section Table: 32-10-0154-01 (formerly CANSIM 004-0003)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210015401
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_FarmLand_Crops
NULL
#' Statistics Canada Farmland Data
#'
#' A dataset from Statistics Canada on farm land use.
#' @section Keys:
#' @section Measurement:
#' \itemize{
#'   \item Total number of farms
#'   \item Total area of farms
#'   \item Area owned
#'   \item Area rented or leased from others
#' }
#' @section Table: 32-10-0152-01 (formerly CANSIM 004-0001)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210015201
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_FarmLand_Farms
NULL
#' Statistics Canada Farmland Data
#'
#' A dataset from Statistics Canada on no till.
#' @section Keys:
#' @section Measurement:
#' \itemize{
#'   \item Commercial fertilizer
#'   \item Herbicides
#'   \item Insecticides
#'   \item Fungicides
#'   \item Total land prepared for seeding
#'   \item No-till seeding or zero-till seeding
#'   }
#' @section Unit:
#' \itemize{
#'   \item Number of farms reporting
#'   \item Hectares
#' }
#' @section Table: 32-10-0162-01 (formerly CANSIM 004-0010)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210016201
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_FarmLand_NoTill
NULL
#' Statistics Canada Farmland Data
#'
#' A dataset from Statistics Canada on farm land use.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Item (Unit):
#' \itemize{
#'   \item Total number of farms
#'   \item Under 10 acres
#'   \item 10 to 69 acres
#'   \item 70 to 129 acres
#'   \item 130 to 179 acres
#'   \item 180 to 239 acres
#'   \item 240 to 399 acres
#'   \item 400 to 559 acres
#'   \item 560 to 759 acres
#'   \item 760 to 1,119 acres
#'   \item 1,120 to 1,599 acres
#'   \item 1,600 to 2,239 acres
#'   \item 2,240 to 2,879 acres
#'   \item 2,880 to 3,519 acres
#'   \item 3,520 acres and above
#' }
#' @section Table: 32-10-0156-01 (formerly CANSIM 004-0005)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210015601
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_FarmLand_Size
NULL
#' Statistics Canada Farmland Data
#'
#' A dataset from Statistics Canada on farm land use.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Item (Unit):
#' \itemize{
#'   \item Total area of farms
#'   \item Land in crops
#'   \item Summerfallow land
#'   \item Tame or seeded pasture
#'   \item All other land
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Area (Number of farms reporting)
#'   \item Area (Acres)
#'   \item Area (Hectares)
#'   \item Area (Average area in acres per farm reporting)
#' }
#' @section Table: 32-10-0153-01 (formerly CANSIM 004-0002)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210015301
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_FarmLand_Use
NULL
#' Statistics Canada Consumer Prices Data
#'
#' A dataset from Statistics Canada on Consumer Food Prices.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Month
#'   \item Product
#'   \item Value
#' }
#' @section Table: 18-10-0002-01
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=1810000201
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Consumer_Prices
NULL
#' Statistics Canada Livestock Data
#'
#' A dataset from Statistics Canada on livestock production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Animal
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Average number of animals (number)
#'   \item Number of animals         (number)
#'   \item Number of farms reporting (number)
#' }
#' @section Table: 32-10-0155-01 (formerly CANSIM 004-0004)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=3210015501
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Livestock
NULL
#' Statistics Canada population Data
#'
#' A dataset from Statistics Canada on population.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Unit
#'   \item Value
#' }
#' @section Table: 17-10-0009-01 (formerly CANSIM 051-0005)
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1710000901&cubeTimeFrame.startMonth=01&cubeTimeFrame.startYear=1946&cubeTimeFrame.endMonth=10&cubeTimeFrame.endYear=2020&referencePeriods=19460101%2C20201001
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Population
NULL
