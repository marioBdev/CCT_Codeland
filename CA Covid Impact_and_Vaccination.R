setwd("/Users/mac/Documents/COLLEGE/CCT/Year-4-2021-2023/Data Exploration & Preparation - Mohamed/CA")
getwd()
wvac <- read.csv("/Users/mac/Documents/COLLEGE/CCT/Year-4-2021-2023/Data Exploration & Preparation - Mohamed/CA/Data on COVID-19 (coronavirus) Vaccinatio/Data on COVID-19 Vaccinatio.csv")
# wvac 43439
library(ggplot2)
library(tidyverse)
view(wvac) 

# How many "N/A" we have wvac - Filter it out 

wvacf=filter(wvac, total_vaccinations != "NA") # 25214

view(wvacf) 

wvacf2 = filter(wvac, people_vaccinated != "NA") # 24232
view(wvacf2)

wvacf4 = filter(wvac, daily_vaccinations_raw != "NA") # 21211

wvacf3 = filter(wvac, people_fully_vaccinated != "NA") # 21158

wvacf5 = filter(wvac, people_fully_vaccinated_per_hundred != "NA") # 21158
# total_vaccinations & people_vaccinated & people_fully_vaccinated & total_boosters & daily_vaccinations_raw & daily_vaccinations & people_fully_vaccinated_per_hundred)
# total_vaccinations
# total_boosters -> biggest




# ----------------------------------------------------------------------
# change column name for location column to region
colnames(wvac)[1]  <- "region"
# map_data: Create a data frame of map data
mapdata <- map_data("world")
view(mapdata)
# having a bit of issue showing the whole dataset after left-joint using View()
mapdata <- left_join(mapdata, wvac, by="region")
view(mapdata)