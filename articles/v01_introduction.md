# List of datasets in tidycensuskr.sf

## Notes

- The version 0.2.0 offers ADM2 and ADM3-level boundary data for three
  census years (2010, 2015, and 2020)
- The bundled data are collected from the Statistical Geographic
  Information Service (SGIS) of the Korean government, which is the
  official source of administrative boundaries in South Korea.
- The data are provided in the form of `sf` objects in coordinate
  reference system (CRS) 5179 (Korea Central Belt 2000).
- All bundled data are provided under the Korea Open Government License
  Type 1, which is a permissive license that allows for free use,
  modification, and distribution of the data. For more information,
  please refer to the [Korea Open Government
  License](https://www.kogl.or.kr/info/licenseTypeEn.do). It is largely
  based on the Creative Commons Attribution License (CC BY).

![](../reference/figures/kogl_type1.jpg)![](../reference/figures/lic-cc-by.png)

## ADM2: District-level boundaries

- ADM2, which corresponds to the district/town/township level (so called
  *Si/Gun/Gu* \[시/군/구\] in Korean), is the most detailed level of
  administrative boundaries available in terms of census data.
- Three separate files are provided in `extdata` folder under the
  package installation path.
  - `adm2_sf_2010.rds`: ADM2 boundaries for 2010 census
  - `adm2_sf_2015.rds`: ADM2 boundaries for 2015 census
  - `adm2_sf_2020.rds`: ADM2 boundaries for 2020 census
- Each file contains a single `sf` object with the following columns:
  - `adm2_code`: ADM2 code (5-digit)
  - `geometry`: geometry column containing the polygon boundaries of
    each ADM2 unit

``` r

# Load ADM2 boundaries for 2020
system.file("extdata/adm2_sf_2020.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: POLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 1136287 ymin: 1673842 xmax: 1148948 ymax: 1690481
    ## Projected CRS: KGD2002 / Unified CS
    ##   year adm2_code                       geometry
    ## 1 2020     21140 POLYGON ((1147104 1689056, ...
    ## 2 2020     21020 POLYGON ((1137763 1683521, ...
    ## 3 2020     21010 POLYGON ((1139121 1678921, ...
    ## 4 2020     21040 POLYGON ((1144618 1676795, ...
    ## 5 2020     21070 POLYGON ((1142639 1682655, ...
    ## 6 2020     21130 POLYGON ((1147030 1688822, ...

``` r

# Load ADM2 boundaries for 2015
system.file("extdata/adm2_sf_2015.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: POLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 950836.3 ymin: 1945988 xmax: 965898.9 ymax: 1959334
    ## Projected CRS: KGD2002 / Unified CS
    ##   year adm2_code                           geom
    ## 1 2015     11010 POLYGON ((953806.8 1959088,...
    ## 2 2015     11020 POLYGON ((957910.7 1952592,...
    ## 3 2015     11030 POLYGON ((956591 1949519, 9...
    ## 4 2015     11040 POLYGON ((962085.4 1951334,...
    ## 5 2015     11050 POLYGON ((965047.4 1952483,...
    ## 6 2015     11060 POLYGON ((962198 1956463, 9...

``` r

# Load ADM2 boundaries for 2010
system.file("extdata/adm2_sf_2010.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: MULTIPOLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 950836.2 ymin: 1945988 xmax: 965899 ymax: 1959334
    ## Projected CRS: KGD2002 / Unified CS
    ##   year adm2_code                           geom
    ## 1 2010     11010 MULTIPOLYGON (((953806.8 19...
    ## 2 2010     11020 MULTIPOLYGON (((957910.7 19...
    ## 3 2010     11030 MULTIPOLYGON (((953378.4 19...
    ## 4 2010     11040 MULTIPOLYGON (((959572.6 19...
    ## 5 2010     11050 MULTIPOLYGON (((964822.7 19...
    ## 6 2010     11060 MULTIPOLYGON (((962198 1956...

## ADM3: Neighborhood-level boundaries

- ADM3, which corresponds to the neighborhood level (so called
  *Eup/Myeon/Dong* \[읍/면/동\] in Korean).
- Three separate files are provided in `extdata` folder under the
  package installation path.
  - `adm3_sf_2010.rds`: ADM3 boundaries for 2010 census
  - `adm3_sf_2015.rds`: ADM3 boundaries for 2015 census
  - `adm3_sf_2020.rds`: ADM3 boundaries for 2020 census
- Each file contains a single `sf` object with the following columns:
  - `adm3_code`: ADM3 code (7-digit)
  - `adm3_name_kr`: ADM3 name in Korean
  - `geometry`: geometry column containing the polygon boundaries of
    each ADM3 unit

``` r

# Load ADM3 boundaries for 2020
system.file("extdata/adm3_sf_2020.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: MULTIPOLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 951368 ymin: 1951962 xmax: 954899.1 ymax: 1959343
    ## Projected CRS: KGD2002 / Unified CS
    ## # A tibble: 6 × 3
    ##   adm3_code adm3_name_kr                                                geometry
    ##   <chr>     <chr>                                             <MULTIPOLYGON [m]>
    ## 1 1101053   서울특별시 종로구 사직동 (((953553.9 1953336, 953556.3 1953307, 953…
    ## 2 1101054   서울특별시 종로구 삼청동 (((953844.1 1955492, 953985.1 1955375, 954…
    ## 3 1101055   서울특별시 종로구 부암동 (((952490.4 1956549, 952596.3 1956300, 952…
    ## 4 1101056   서울특별시 종로구 평창동 (((953683.8 1959210, 953665.3 1959132, 953…
    ## 5 1101057   서울특별시 종로구 무악동 (((952298.1 1953540, 952417.1 1953397, 952…
    ## 6 1101058   서울특별시 종로구 교남동 (((952572 1953259, 952589.8 1953199, 95261…

``` r

# Load ADM3 boundaries for 2015
system.file("extdata/adm3_sf_2015.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: MULTIPOLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 951455 ymin: 1951959 xmax: 954929.9 ymax: 1959334
    ## Projected CRS: KGD2002 / Unified CS
    ## # A tibble: 6 × 3
    ##   adm3_code adm3_name_kr                                                geometry
    ##   <chr>     <chr>                                             <MULTIPOLYGON [m]>
    ## 1 1101053   서울특별시 종로구 사직동 (((953790.3 1953056, 953819.8 1952332, 953…
    ## 2 1101054   서울특별시 종로구 삼청동 (((954332.7 1955199, 954392.6 1955120, 954…
    ## 3 1101055   서울특별시 종로구 부암동 (((953730 1955369, 953528.1 1955006, 95338…
    ## 4 1101056   서울특별시 종로구 평창동 (((953683.1 1959232, 954127.8 1958893, 954…
    ## 5 1101057   서울특별시 종로구 무악동 (((952380.1 1953627, 952567.9 1953476, 952…
    ## 6 1101058   서울특별시 종로구 교남동 (((953111.7 1952224, 952909.3 1951959, 952…

``` r

# Load ADM3 boundaries for 2010
system.file("extdata/adm3_sf_2010.rds", package = "tidycensuskr.sf") |>
  readRDS() |>
  head()
```

    ## Simple feature collection with 6 features and 2 fields
    ## Geometry type: MULTIPOLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 951455 ymin: 1951971 xmax: 954929.9 ymax: 1959334
    ## Projected CRS: KGD2002 / Unified CS
    ## # A tibble: 6 × 3
    ##   adm3_code adm3_name_kr                                                geometry
    ##   <chr>     <chr>                                             <MULTIPOLYGON [m]>
    ## 1 1101053   서울특별시 종로구 사직동 (((953540 1953462, 953548 1953364, 953549.…
    ## 2 1101054   서울특별시 종로구 삼청동 (((954575.4 1953150, 954361.2 1953031, 954…
    ## 3 1101055   서울특별시 종로구 부암동 (((952511 1956426, 952669.3 1956046, 95267…
    ## 4 1101056   서울특별시 종로구 평창동 (((953822.4 1958950, 953958.2 1958903, 954…
    ## 5 1101057   서울특별시 종로구 무악동 (((952322.8 1952797, 952277.7 1952758, 951…
    ## 6 1101058   서울특별시 종로구 교남동 (((953111.7 1952224, 952901 1951971, 95282…
