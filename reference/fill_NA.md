# fill_NA

This function replaces NA values with the nearest above value.

## Usage

``` r
fill_NA(x)
```

## Arguments

- x:

  vector

## Value

Vector with NA values replaced with the nearest above value

## Examples

``` r
xx %>% mutate(Column1 = fill_NA(Column1))
#> Error: object 'xx' not found
```
