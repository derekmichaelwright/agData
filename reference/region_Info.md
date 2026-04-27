# region_Info

Adds region information to agData datasets. Uses both
agData_FAO_Country_Table and agData_FAO_Region_Table.

## Usage

``` r
region_Info(x)
```

## Arguments

- x:

  dataset.

## Value

Table with region info added

## Examples

``` r
xx <- agData_FAO_Crops %>% addRegionInfo()
#> Error in addRegionInfo(.): could not find function "addRegionInfo"
```
