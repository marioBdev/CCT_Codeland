wvac <- read.csv("{YOUR-MACHINE-PATHpath}/Data on COVID-19 (coronavirus) Vaccinatio/Data on COVID-19 Vaccinatio.csv")

library(ggplot2)
library(tidyverse)
view(wvac)
# map_data: Create a data frame of map data
mapdata <- map_data("world")
view(mapdata)
# change column name for location column to region
colnames(wvac)[1]  <- "region"

mapdata <- left_join(mapdata, wvac, by="region")
view(mapdata)
