# pdf_Table

This function calculates a pdf file for a table of data.

## Usage

``` r
pdf_Table(data, filename, rowsperpage = 36, width = 2.5, height = 11)
```

## Arguments

- data:

  Data.

- filename:

  Name to give pdf file.

- rowsperpage:

  Rows per page.

- width:

  width of page.

- height:

  height of page.

## Value

Table with mean and sd for trait.

## Examples

``` r
pdf_Table(agData_FAO_Crops %>% filter(Area == "Canada", Crop == "Lentils") %>% select(Year, Measurement, Value), "myPDF.pdf", 41, 3.75, 12)
#> 
#> Attaching package: ‘gridExtra’
#> The following object is masked from ‘package:dplyr’:
#> 
#>     combine
#> Error: object 'agData_FAO_Crops' not found
```
