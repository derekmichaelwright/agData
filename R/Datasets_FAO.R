NULL
#' FAO Country Table
#'
#' A table of country information.
#' @section Keys:
#' \itemize{
#'   \item Country
#'   \item FAO_TABLE_NAME
#'   \item ISO2
#'   \item ISO3
#'   \item Lat
#'   \item Lon
#'   \item Region
#'   \item SubRegion
#'   \item DVDDVG
#' }
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Country_Table
NULL
#' FAO Region Table
#'
#' A table of region information.
#' @section Keys:
#' \itemize{
#'   \item FAO_TABLE_NAME
#'   \item Region
#'   \item SubRegion
#'   \item Name
#' }
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Region_Table
NULL
#' FAO Crop Production Data
#'
#' A dataset containing crop data from FAOSTAT.
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
#'   \item Production     (Tonnes)
#'   \item Area Harvested (Hectares)
#'   \item Yield          (kg/ha)
#' }
#' @source http://www.fao.org/faostat/en/#data/QC
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Crops
NULL
#' FAO Consumer Price Indices
#'
#' A dataset containing consumer price indices from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Date
#'   \item Year
#'   \item MonthNum
#'   \item Month
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Consumer Prices, Food Indices (2015 = 100)
#'   \item Consumer Prices, General Indices (2015 = 100)
#'   \item Food price inflation (%)
#' }
#' @source http://www.fao.org/faostat/en/#data/CP
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Consumer_Prices
NULL
#' FAO Producer Price Indices
#'
#' A dataset containing producer price indices from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Item
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Producer Price Index (2014-2016 = 100)
#'   \item Producer Price (USD/Tonne)
#' }
#' @source http://www.fao.org/faostat/en/#data/PP
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Producer_Prices
NULL
#' FAO Food Price Index
#'
#' A dataset containing food price indices from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Date
#'   \item Year
#'   \item Month
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @source https://www.fao.org/worldfoodsituation/foodpricesindex/en/
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Food_Prices
NULL
#' FAO Crop Production Data
#'
#' A dataset containing crop aggregate data from FAOSTAT.
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
#'   \item Production     (Tonnes)
#'   \item Area Harvested (Hectares)
#'   \item Yield          (kg/ha)
#' }
#' @source http://www.fao.org/faostat/en/#data/QC
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Crops2
NULL
#' FAO fertilizer data
#'
#' FAO fertilizer data
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement:
#' \itemize{
#'   \item Production
#'   \item Import Quantity
#'   \item Export Quantity
#'   \item Agricultural Use
#'   \item Prices Paid by Farmers
#' }
#' @source http://www.fao.org/faostat/en/#data/RFN
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Fertilizers
NULL
#' FAO Land Use Data
#'
#' A dataset containing land use data from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Item:
#' \itemize{
#'   \item Country area
#'   \item Land area
#'   \item Agricultural area
#'   \item ...
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Area                           (1000 hectares)
#'   \item Carbon stock in living biomass (million tonnes)
#' }
#' @source http://www.fao.org/faostat/en/#data/RL
#' @docType data
#' @keywords datasets
#' @name agData_FAO_LandUse
NULL
#' FAO Livestock Data
#'
#' A dataset containing livestock data from FAOSTAT.
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
#'   \item Stocks (head or 1000 head)
#' }
#' @source http://www.fao.org/faostat/en/#data/QA
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Livestock
NULL
#' FAO world population data
#'
#' FAO world population data
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurements:
#' \itemize{
#'   \item Total
#'   \item Male
#'   \item Female
#'   \item Rural
#'   \item Urban
#' }
#' @source http://www.fao.org/faostat/en/#data/OA
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Population
NULL
#' FAO Trade Data
#'
#' A dataset containing trade data from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Export Quantity (Tonnes)
#'   \item Import Quantity (Tonnes)
#' }
#' @source http://www.fao.org/faostat/en/#data/TP
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Trade_Quantity
NULL
#' FAO Trade Data
#'
#' A dataset containing trade data from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Item
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item Export Value (USD)
#'   \item Import Value (USD)
#' }
#' @source http://www.fao.org/faostat/en/#data/TP
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Trade_Value
NULL
