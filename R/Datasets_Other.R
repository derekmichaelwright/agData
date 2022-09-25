NULL
#' Lentil Barulina
#' 
#' A dataset for lentil production from Barulina's Monograph.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Crop
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @section Measurements (Unit):
#' \itemize{
#'   \item Area Harvested (Hectares)
#'   \item Production     (Tonnes)
#'   \item Yield          (kg/ha)
#' }
#' @source Barulina, Elena I. (1930) Lentils of the USSR and of other countries.
#' @docType data
#' @keywords datasets
#' @name agData_Barulina
NULL
#' ISAAA GE Crop Data
#' 
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
#' ISAAA GE Country Data
#' 
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
#' 
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
#' 
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
#' 
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
#' ISAAA GE Crop Data
#' 
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
#' Long Term Maize Selection
#' 
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
#' Maize Contest
#' 
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
#' @source https://www.ncga.com/
#' @docType data
#' @keywords datasets
#' @name agData_MaizeContest
NULL
#' People in Ag
#' 
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
#' @name agData_PeopleInAg
NULL
#' Population with and without fertilizers
#' 
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
#' Long term yield data for UK
#' 
#' A dataset of long term yield data in UK.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Crop
#'   \item Year
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @source ...
#' @docType data
#' @keywords datasets
#' @name agData_UK_Yields
NULL
#' USDA Crop Data
#' 
#' A dataset from the USDA on crop production.
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
#'   \item Area Seeded    (Hectares)
#'   \item Area Harvested (Hectares)
#'   \item Yield          (kg/ha)
#' }
#' @source https://www.nass.usda.gov/
#' @docType data
#' @keywords datasets
#' @name agData_USDA_Crops
NULL
#' USDA GE Crop Data
#' 
#' A dataset from the USDA on GE crop production.
#' @section Keys:
#' \itemize{
#'   \item Area
#'   \item Year
#'   \item Crop
#'   \item Measurement
#'   \item Unit
#'   \item Value
#' }
#' @source https://www.ers.usda.gov/data-products/adoption-of-genetically-engineered-crops-in-the-us/
#' @docType data
#' @keywords datasets
#' @name agData_USDA_GE_Crops
NULL
#' USDA Agricultureal Productivity data
#' 
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