# tidycensuskr.sf

District boundaries by censal years for `tidycensuskr` package

This package is a companion package for `tidycensuskr`. It provides
district boundaries by censal years for South Korea.

## Installation

``` r
install.packages("tidycensuskr.sf", repos = "https://sigmafelix.r-universe.dev")
```

An up-to-date version can be installed from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("sigmafelix/tidycensuskr.sf")
```

## Usage

[`load_districts()`](https://sigmafelix.github.io/tidycensuskr/reference/load_districts.html)
function is the main function to load district boundaries by censal
years. The current version supports three censal years: 2010, 2015, and
2020. The function takes a single argument `year` which specifies the
censal year to load. The default value is 2020.

``` r
library(tidycensuskr)
#> tidycensuskr 0.2.4 (2025-11-20)
#> Please install the companion data package tidycensussfkr to use the district boundaries.
#> install.packages('tidycensussfkr', repos = 'https://sigmafelix.r-universe.dev')
library(tidycensuskr.sf)
#> tidycensussfkr 0.1.4 (2025-11-23)
library(sf)
#> Linking to GEOS 3.12.2, GDAL 3.11.4, PROJ 9.4.1; sf_use_s2() is TRUE
sf::sf_use_s2(FALSE)
#> Spherical geometry (s2) switched off

# Load 2020 district boundaries
adm2_2020 <- load_districts(year = 2020)
head(adm2_2020)
#> Simple feature collection with 6 features and 2 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 1136287 ymin: 1673842 xmax: 1148948 ymax: 1690481
#> Projected CRS: KGD2002 / Unified CS
#>   year adm2_code                       geometry
#> 1 2020     21140 POLYGON ((1147104 1689056, ...
#> 2 2020     21020 POLYGON ((1137763 1683521, ...
#> 3 2020     21010 POLYGON ((1139121 1678921, ...
#> 4 2020     21040 POLYGON ((1144618 1676795, ...
#> 5 2020     21070 POLYGON ((1142639 1682655, ...
#> 6 2020     21130 POLYGON ((1147030 1688822, ...
plot(st_geometry(adm2_2020))
```

![](reference/figures/README-load_2020-1.png)

## Data source

The district boundaries are sourced from the Statistics Korea (KOSTAT)
website. The original data were simplified to reduce file size and
improve visualization performance. The simplification process may have
resulted in some loss of detail in the boundaries.

## Issues

Please report any issues, bugs, or suggestions on Issues page of this
GitHub repository.
