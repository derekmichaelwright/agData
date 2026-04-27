# folder_Renamer

This function copies all files in the input folder to the output folder
then renames them based on folder name.

## Usage

``` r
folder_Renamer(input, output, pad.width = 3, start.num = 1)
```

## Arguments

- input:

  Input folder

- output:

  Output folder

- pad.width:

  Minimum width of padded number

- start.num:

  Starting number

## Value

Renamed files in the output folder

## Examples

``` r
renameByFolder(input = "J:/PhotoR/input",
               output = "J:/PhotoR/output",
               pad.width =3 , start.num = 1)
#> Error in renameByFolder(input = "J:/PhotoR/input", output = "J:/PhotoR/output",     pad.width = 3, start.num = 1): could not find function "renameByFolder"
```
