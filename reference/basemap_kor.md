# Basemap layout for `tmap` in South Korea

This function first downloads adjacent country polygon data from GADM
and then creates a basemap layout with insets for South Korea. The sf
objects are reprojected to EPSG:5179 (Korea 2000 / Unified CS).

## Usage

``` r
basemap_kor(geodata_path = "~/geodata")
```

## Arguments

- geodata_path:

  A character string specifying the directory to store the downloaded
  GADM data. Default is `"~/geodata"`.

## Value

A `tmap` object representing the basemap layout for South Korea.

## Note

The output is a tmap object that can be further customized. It is
recommended to export the map using
[`tmap::tmap_save()`](https://r-tmap.github.io/tmap/reference/tmap_save.html)
with a high resolution (i.e., dpi \> 200).
