# Creating a hexbin chloropleth map based on responses per state

# libraries for the geography, cleaning, and color pallett
require(geojsonio)
require(broom)
require(rgeos)
require(viridis)

# USA hexbin map available in the geojson format here:
# https://team.carto.com/u/andrew/tables/andrew.us_states_hexgrid/public/map. 
# Download it choosing the geojson format and then:
spdf <- geojson_read("us_states_hexgrid.geojson.json",  what = "sp")

# Make some changes to the names (with `gsub`)
# Then use `tidy` to convert the complex S4 object (`spdf`) to 
# a data frame (`spdf_fortified`) compatible with the tidyverse
# `tidy` is a function in the `broom` package
spdf@data <- spdf@data %>% 
  mutate(google_name = gsub(" \\(United States\\)", "", google_name))
spdf_fortified <- tidy(spdf, region = "google_name")

# Calculate the centroid of each hexagon to add the label
# using package `rgeos`
centers <- 
  cbind.data.frame(data.frame(gCentroid(spdf, byid=TRUE),
                              id=spdf@data$iso3166_2))

# Calculate the number of records in 
# DSSurvey for each state
DSSurvey %>% 
  group_by(state) %>% 
  summarize(n = n()) -> state_freqs

# Add the frequencies
# to the geospatial data
spdf_fortified <- spdf_fortified %>%
  left_join(state_freqs, by=c("id"="state")) 


# plot
ggplot() +
  # plot the hexagons
  geom_polygon(data = spdf_fortified, 
               aes(fill = n,     # the frequencies
                   x = long, 
                   y = lat, 
                   group = group), 
               size=0, alpha=0.9) +
  # eliminate grid lines and axis scales to declutter
  theme_void() +
  # add this color scale, taking log of the frequencies
  # to be able to see outliers
  scale_fill_viridis(trans = "log", 
                     breaks=c(1,5,10,15,120), 
                     name="Freq of responses", 
                     guide = guide_legend( keyheight = unit(3, units = "mm"),
                                           keywidth=unit(12, units = "mm"), 
                                           label.position = "bottom", 
                                           title.position = 'top', 
                                           nrow=1) ) +
  # add the state names to the hexagons
  geom_text(data=centers, 
            aes(x=x, y=y, 
                label=id), 
            color="white", size=3, alpha=0.6) +
  # add a title at the top
  ggtitle("Response rate to Anne's survey") +
  # make the entire color scheme/locations work together
  theme(
    text = element_text(color = "#22211d"), 
    plot.background = element_rect(fill = "#f5f5f2", color = NA), 
    panel.background = element_rect(fill = "#f5f5f2", color = NA), 
    legend.background = element_rect(fill = "#f5f5f2", color = NA),
    plot.title = element_text(size= 22, 
                              hjust=0.01, 
                              color = "#4e4d47",
                              margin = margin(b = -0.1, t = 0.4, l = 2, unit = "cm")),
    legend.position = c(0.8,1)
  ) 

