library(terra)

# Charger le raster
r <- rast("C:/Users/xxxx/Downloads/Cacao.tif")

# Charger le vecteur (shapefile, gpkg...)
v <- vect("C:/Users/xxxx/Downloads/TNSTri.shp")

# Clip + découpage selon le polygone
r_clip <- crop(r, v)
r_clip <- mask(r_clip, v)

# Export
writeRaster(
  r_clip,
  "C:/Users/xxxx/Downloads/Cacao_clip.tif",
  overwrite = TRUE
)
