#' Load `sf` district polygons
#'
#' Load ADM2 district polygons for a supported boundary year.
#'
#' @param year Integer census or boundary year. One of 2010, 2015, 2020, or
#'   2025. Defaults to 2020.
#' @return An `sf` object with `year`, `adm2_code`, and a geometry column.
#' @details The 2025 boundary is the KOSTAT 2025 second-quarter boundary file,
#'   with reference date 2025-06-30.
#' @examples
#' sf_2025 <- load_districts(year = 2025)
#' head(sf_2025)
#' @export
load_districts <- function(year = 2020) {
  supported_years <- c(2010L, 2015L, 2020L, 2025L)
  if (length(year) != 1L || is.na(year) || !year %in% supported_years) {
    stop("year must be one of 2010, 2015, 2020, or 2025", call. = FALSE)
  }

  path <- system.file(sprintf("extdata/adm2_sf_%d.rds", year),
                      package = "tidycensuskr.sf")
  boundary <- readRDS(path)
  boundary
}
