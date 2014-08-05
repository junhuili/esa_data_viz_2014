#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# This script contains examples of using 'ggmap' to make quick and #
# easy maps with point location                                    #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# NOTE: YOU MUST BE CONNECTED TO THE INTERNET
# NOTE: WHEN MAKING YOUR OWN MAP, YOU WILL NEED TO ADJUST THE 'zoom' PARAMETER 
#       IN THE 'get_map' FUNCTION TO GET CORRECT SPATIAL EXTENT -- JUST PLAY AROUND WITH IT

# GOOGLE ggmap FOR MORE DETAILS ON ITS FUNCTIONALITY

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Install the ggmap package if you have not already done so (uncomment line below)
# install.packages("ggmap")

# Clear the workspace
rm(list=ls()) 

# Load libraries; you may need to install these as well like above
library(ggplot2)
library(ggthemes)
library(ggmap)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                        MAP OF CA WITH KINGS CANYON NP                         #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# First use 'geocode' to get the lat/long of USU -- this is essentially a Google search
confPt <- geocode("kings canyon national park")
# Now get the base map using 'get_map', the location is also a Google search
mapCA <- get_map(location="california", source ="stamen", maptype="toner", zoom=6)
# Put it together using 'ggmap' and the standard ggplot call to geom_point
ggmap(mapCA, extent="device")+
  geom_point(data=confPt, aes(x=lon, y=lat), color="dodgerblue", size=5)

# More examples
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                   MAP OF LOGAN WITH BEAVER MTN SKI RESORT                     #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# You can set the point coordinates mannually (or read in from spreadsheet), like below
beaverPt <- data.frame(lat=41.9683,
                       lon=-111.5417)
# Or you can get lat/longs from Google, like below
# beaverPt <- geocode("beaver mountain, utah")
map <- get_map(location = "Logan, UT", zoom = 8, source = "stamen", maptype="toner")
ggmap(map, extent="device")+
  geom_point(data=beaverPt, aes(x=lon, y=lat), color="dodgerblue", size=5)

