# Convert administrative level 2 sf polygons to basic local government boundaries

This function converts administrative level 2 polygons from Ministry of
Data and Statistics (formerly Statistics Korea) to basic local
government boundaries. Basic local governments are administrative units
with their own local councils and mayors, such as cities (si), counties
(gun) and districts (gu), but without districts in populous
non-metropolitan cities.

## Usage

``` r
convert_basic_adm2(adm2_sf = NULL, year = 2020)
```

## Arguments

- adm2_sf:

  An `sf` object containing administrative level 2 polygons from
  Ministry of Data and Statistics.

- year:

  An integer specifying the year of the administrative level 2 data.
  Default is 2020. This value is ignored when `adm2_sf` is provided.

## Value

An `sf` object containing basic local government boundaries.
