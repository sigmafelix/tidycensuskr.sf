library(sf)
library(geodata)
library(tmap)

# load korea polygon data
korea <- geodata::gadm(country = "KOR", level = 1, path = "~/geodata")
korea <-
  sf::st_as_sf(korea) |>
  sf::st_transform(5179)
korea2 <- geodata::gadm(country = "KOR", level = 2, path = "~/geodata")
korea2 <-
  sf::st_as_sf(korea2) |>
  sf::st_transform(5179)
kp <- geodata::gadm(country = "PRK", level = 0, path = "~/geodata")
kp <-
  sf::st_as_sf(kp) |>
  sf::st_transform(5179)
jp <- geodata::gadm(country = "JPN", level = 0, path = "~/geodata")
jp <-
  sf::st_as_sf(jp) |>
  sf::st_transform(5179)

# inset bounding boxes
bb_ull <-
  sf::st_bbox(c(xmin = 1288000, xmax = 1308000, ymin = 1942000, ymax = 1956000), crs = 5179)
bb_dkd <-
  sf::st_bbox(c(xmin = 1386500, xmax = 1388500, ymin = 1924500, ymax = 1925200), crs = 5179)
bb_bnd <-
  sf::st_bbox(c(xmin = 745000, xmax = 765000, ymin = 1965000, ymax = 2008000), crs = 5179)
ext_kormain <-
  sf::st_bbox(c(xmin = 800000, xmax = 1220000, ymin = 1458000, ymax = 2070000), crs = 5179)

# basemap with insets
basemap_kor <-
  tmap::tm_shape(korea, bbox = ext_kormain, is.main = TRUE) +
  tmap::tm_polygons(col = "black", fill = "beige", lwd = 1, col_alpha = 0.7) +
  tmap::tm_shape(korea2) +
  tmap::tm_borders(col = "black", lwd = 0.4, col_alpha = 0.5) +
  tmap::tm_shape(kp) +
  tmap::tm_polygons(col = "grey", fill_alpha = 0.7, col_alpha = 0.9) +
  tmap::tm_shape(jp) +
  tmap::tm_polygons(col = "grey", fill_alpha = 0.7, col_alpha = 0.9) +
  tmap::tm_scalebar(
    breaks = c(0, 50, 100),
    position = c("left", "top"),
    text.size = 1,
    lwd = 1.5
  ) +
  tmap::tm_layout(
    legend.position = tmap::tm_pos_in(pos.h = "right", pos.v = "bottom"),
    legend.orientation = "horizontal"
  ) +
  tmap::tm_inset(bb_ull, height = 3.2, width = 3.2, position = c(0.84, 0.99),
    frame.lwd = 0
  ) +
  tmap::tm_inset(bb_dkd, height = 1.8, width = 1.8, position = c(0.84, 0.99),
    frame.lwd = 0
  ) +
  tmap::tm_inset(
    bb_bnd, height = 5, width = 4,
    margins = rep(0, 4),
    between_margin = rep(0, 4),
    frame = FALSE,
    frame.lwd = 0,
    position = c("left", "center"))

# print the basemap
print(basemap_kor)

tmap_save(basemap_kor, filename = "man/figures/vignette01-basemap.png", dpi = 200, width = 6, height = 8, units = "in", bg = "white")
