# ASOS info: https://mesonet.agron.iastate.edu/request/download.phtml?network=IL_ASOS

library(data.table)
library(lubridate)
getDTthreads()
setDTthreads(threads=5)
setwd("/scratch/gilbreth/YourUserName/ASOS")
input <- "/depot/gdsp/data/ASOS/IllinoisRainFilteredData.csv"
xdata <- fread(input)
xdata

# drop V1, column valid change to time in POSIX
xdata[,V1:=NULL][, time := parse_date_time(valid, "YmdHM", tz="UTC")][ ,valid:=NULL]

# precipitation in mm/hr, trace reports set to 0
xdata[p01i=="M", p01i:=NA][p01i=="T", p01i:=0][,precip:=as.numeric(p01i)*25.4][,p01i:=NULL]

# temperature at 2 meters in C
xdata[tmpf=="M", tmpf:=NA][,temp:=(as.numeric(tmpf)-32)*5/9][,tmpf:=NULL]

#reorder
setcolorder(xdata,c("time","station","lon","lat","temp","precip"))
summary(xdata)

# convert to sf object
# library(sf) |> suppressPackageStartupMessages()
# xdata.sf <- st_as_sf(xdata, crs = 'OGC:CRS84',
#                   coords = c("lon", "lat"))

# extract 09/11/2022 https://www.weather.gov/lot/2022sep11

Case091122 <- xdata[year(time)==2022 & month(time)==9 & day(time) %in% c(11,12)]

# extract 08/07/2022 https://www.weather.gov/lot/2022aug0708

Case080722 <- xdata[year(time)==2022 & month(time)==8 & day(time) %in% c(7,8)]


# extract 05/17/2020 https://www.weather.gov/lot/17may2020

Case051720 <- xdata[year(time)==2020 & month(time)==5 & day(time) %in% c(17,18)]

# extract 07/22/2010 https://www.weather.gov/lot/2010jul24

Case072210 <- xdata[year(time)==2010 & month(time)==7 & day(time) %in% c(21,24)]

save(Case091122, file="Case091122.RData")
save(Case080722, file="Case080722.RData")
save(Case051720, file="Case051720.RData")
save(Case072210, file="Case072210.RData")
