# https://github.com/jusck/wildfire.git

# Note change password in shell with passwd

# Some mapping blogs...

# https://blogs.oracle.com/ai-and-datascience/post/a-beginners-exploration-of-shiny-and-leaflet-for-interactive-mapping
# https://community.rstudio.com/t/how-to-plot-leaflet-map-in-shiny-mainpanel/107079
# https://rpubs.com/insight/leaflet
# https://rstudio.github.io/leaflet/shiny.html
# https://datatricks.co.uk/leaflet-maps-in-r

# https://www.arcgis.com/sharing/rest/content/items/39469ce1ae6441e7bc10ba0ba1ed5572/data

require(shiny)
require(leaflet)

download.file('https://www.arcgis.com/sharing/rest/content/items/39469ce1ae6441e7bc10ba0ba1ed5572/data','download.zip')
unzip('download.zip')
unzip()


mymap <- leaflet() %>%
  addTiles() %>% # Add default OpenStreetMap map tiles
  addMarkers(lng=-0.127949, lat=51.507752, popup="Wildfire Detected")
mymap


mymap <- leaflet() %>%
  addTiles() %>%
  setView( lng=-0.127949, lat=51.507752, zoom = 5 ) %>%
  addProviderTiles("NASAGIBS.ViirsEarthAtNight2012")
mymap


