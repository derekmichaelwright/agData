#' FAO Country Table
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
#' A dataset containing crop data from FAOSTAT.
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
#'   \item Production     (tonnes)
#'   \item Area harvested (hectares)
#'   \item Yield          (t/ha)
#' }
#' @source http://www.fao.org/faostat/en/#data/QC
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Crops
NULL
#' FAO Crop Production Data
#' A dataset containing crop aggregate data from FAOSTAT.
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
#'   \item Production     (tonnes)
#'   \item Area harvested (hectares)
#'   \item Yield          (t/ha)
#' }
#' @source http://www.fao.org/faostat/en/#data/QC
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Crops2
NULL
#' FAO Livestock Data
#' A dataset containing livestock data from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Animal
#'   \item Year
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
#' FAO Land Use Data
#' A dataset containing land use data from FAOSTAT.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Item
#'   \item Year
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
#' FAO Trade Data
#' A dataset containing trade data from FAOSTAT.
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
#'   \item Export Quantity (tonnes)
#'   \item Import Quantity (tonnes)
#'   \item Export Value (1000 $USD)
#'   \item Import Value (1000 $USD)
#' }
#' @source http://www.fao.org/faostat/en/#data/TP
#' @docType data
#' @keywords datasets
#' @name agData_FAO_Trade
NULL
#' FAO world population data
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Item
#'   \item Year
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
#' FAO fertilizer data
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Item
#'   \item Year
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
#' Statistics Canada - Region Info
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
#' @source https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035301
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Beehives
NULL
#' Crops Statistics Canada Data
#' A dataset from Statistics Canada on crop production.
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
#'   \item Production         (tonnes)
#'   \item Area seeded        (hectares)
#'   \item Area harvested     (hectares)
#'   \item Yield              (tonnes/ha)
#'   \item Average farm price (dollars per tonne)
#' }
#' @source https://www150.statcan.gc.ca/
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Crops
NULL
#' Crops Statistics Canada Data
#' A dataset from Statistics Canada on crop aggregate data.
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
#'   \item Production         (tonnes)
#'   \item Area seeded        (hectares)
#'   \item Area harvested     (hectares)
#'   \item Yield              (tonnes/ha)
#'   \item Average farm price (dollars per tonne)
#' }
#' @source https://www150.statcan.gc.ca/
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Crops2
NULL
#' Statistics Canada Livestock Data
#' A dataset from Statistics Canada on livestock production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Animal
#'   \item Year
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
#' @source https://www150.statcan.gc.ca/
#' @docType data
#' @keywords datasets
#' @name agData_STATCAN_Livestock
NULL
#' USDA Crop Data
#' A dataset from the USDA on crop production.
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
#'   \item Production     (tonnes)
#'   \item Area seeded    (hectares)
#'   \item Area harvested (hectares)
#'   \item Yield          (t/ha)
#' }
#' @source https://www.nass.usda.gov/
#' @docType data
#' @keywords datasets
#' @name agData_USDA_Crops
NULL
#' USDA Agricultureal Productivity data
#' A dataset from the USDA on agricultural productivity production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurement (Unit):
#' \itemize{
#'   \item TFP
#'   \item Inputs
#'   \item Outputs
#'   \item ...
#' }
#' @source https://www.nass.usda.gov/
#' @docType data
#' @keywords datasets
#' @name agData_USDA_TFP
NULL
#' People in Ag
#' A dataset from people in ag.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurements:
#' \itemize{
#'   \item Total
#'   \item Percent
#' }
#' @source ?
#' @docType data
#' @keywords datasets
#' @name agData_People
NULL
#' ISAAA GE Crop Data
#' A dataset from ISAAA for total GE crop area.
#' Note: this data set includes cultivation of GE tobacco in China for 1996 and 1997.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Hectares
#'   \item plus_minus
#'   \item Percent.Change
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Acres
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_Area
NULL
#' ISAAA GE Crop Data
#' A dataset from ISAAA for total GE crop area in industrialized and devloping nations.
#' Note: this data set includes cultivation of GE tobacco in China for 1996 and 1997.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Area
#'   \item Hectares
#'   \item Percent
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Percent
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_DVDDVG
NULL
#' ISAAA GE Country Data
#' A dataset from ISAAA for total GE crop area by Country.
#' Note: data is rounded to the nearest 100,000 hectares.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Crop
#'   \item Million.Hectares
#'   \item Percent
#'   \item plus_minus
#'   \item Percent.Change
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Percent
#'   \item plus_minus
#'   \item Percent Change
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_Country
NULL
#' ISAAA GE Crop Data
#' A dataset from ISAAA for total GE crop area by Crop.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Crop
#'   \item Million.Hectares
#'   \item Percent
#'   \item plus_minus
#'   \item Percent.Change
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Percent
#'   \item plus_minus
#'   \item Percent Change
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_Crop
NULL
#' ISAAA GE Crop Data
#' A dataset from ISAAA for total GE crop area by Crop percent.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Crop
#'   \item Global.Area
#'   \item Transgenic.Crop.Area
#'   \item Percent.Transgenic
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Acres
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_CropPercent
NULL
#' ISAAA GE Crop Data
#' A dataset from ISAAA for total value of GE crops.
#' @section Keys:
#' \itemize{
#'   \item Year
#'   \item Value
#'   \item Unit
#' }
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Acres
#' }
#' @source https://www.isaaa.org/
#' @docType data
#' @keywords datasets
#' @name agData_ISAAA_Value
NULL
#' NBT limitations
#' A dataset for survey data about limitation of NBT. Percentage of experts indicating that factor will be a barrier to NBT development.
#' @section Measurements:
#' \itemize{
#'   \item Hectares
#'   \item Acres
#' }
#' @source Lassoued R, Smyth SJ, Phillips PW & Hesseln H (2018) Regulatory uncertainty around new breeding techniques. Frontiers in plant science. 9.
#' @docType data
#' @keywords datasets
#' @name agData_NBT_Limits
NULL
#' Lentil Barulina
#' A dataset for lentil production from Barulina's Monograph.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Crop
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurements:
#' \itemize{
#'   \item Area harvested
#'   \item Production
#'   \item Yield
#' }
#' @source Barulina, Elena I. (1930) Lentils of the USSR and of other countries.
#' @docType data
#' @keywords datasets
#' @name agData_Barulina
NULL
#' Maize Contest
#' A dataset for Maize Yield Contest.
#' @section Keys:
#' \itemize{
#'   \item Crop
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurements:
#' \itemize{
#'   \item Irrigated
#'   \item Non-Irrigated
#' }
#' @source Corn Growers Association.
#' @docType data
#' @keywords datasets
#' @name agData_MaizeContest
NULL
#' Long Term Maize Selection
#' A dataset for Long Term Maize Selection Experiment.
#' NOTES: This file contains years, generation numbers, ear numbers (from 1897-1921 ear numbers indicate
#' the row (first two digits) and the ear within the row (last 3 digits); for other years the ears are numbered
#' without a row designation), and individual ear data
#' for each generation and each strain of the long-term selection experiment for oil and protein
#' at the University of Illinois.  Data for strains selected for protein (IHP, etc.) are
#' percent protein on a dry weight basis. Data for strains selected for oil (IHO, etc.) are
#' percent oil on a dry weight basis.
#' Abbreviations used are GEN=overall generation, IHP=Illinois high protein, ILP=Illinois
#' low protein, IRHP=Illinois reverse high protein, IRLP=Illinois reverse low protein,
#' IRLP2=Illinois reverse low protein 2, IHO=Illinois high oil, ILO=Illinois low oil, IRHO=Illinois
#' reverse high oil, IRLO=Illinois reverse low oil, ISHO=Illinois switchback high oil.  Columns
#' headed INIHP, INILP, etc. indicate whether an ear was selected as a parent for the next generation.
#' A selected ear has a value of 1, a non-selected ear a value of 0.
#' @section Measurements:
#' \itemize{
#'   \item IHO
#' }
#' @source ?.
#' @docType data
#' @keywords datasets
#' @name agData_LongTermMaize
NULL
#' Population with and without fertilizers
#' A dataset of global population with and without fertilizers.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @source https://www.nature.com/articles/ngeo325
#' @docType data
#' @keywords datasets
#' @name agData_PopFert
NULL