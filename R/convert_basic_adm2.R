#' Convert administrative level 2 sf polygons to basic local government boundaries
#'
#' This function converts administrative level 2 polygons from Ministry of Data and Statistics (formerly Statistics Korea) to basic local government boundaries. Basic local governments are administrative units with their own local councils and mayors, such as cities (si), counties (gun) and districts (gu), but without districts in populous non-metropolitan cities.
#'
#' @param adm2_sf An `sf` object containing administrative level 2 polygons from Ministry of Data and Statistics.
#' @param year An integer specifying the year of the administrative level 2 data. Default is 2020. This value is ignored when `adm2_sf` is provided.
#' @return An `sf` object containing basic local government boundaries.
#' @importFrom dplyr group_by summarise ungroup mutate
#' @export
convert_basic_adm2 <- function(
  adm2_sf = NULL,
  year = 2020
) {
  if (is.null(adm2_sf)) {
    # load korea polygon data
    file_path <- system.file(sprintf("extdata/adm2_sf_%d.rds", year),
      package = "tidycensuskr.sf"
    )
    adm2_sf <- readRDS(file_path)
  }

  basic_lg_sf <- adm2_sf |>
    dplyr::mutate(adm2_code = paste0(substr(adm2_code, 1, 4), "0")) |>
    dplyr::group_by(adm2_code) |>
    dplyr::summarise() |>
    dplyr::ungroup()

  return(basic_lg_sf)
}
