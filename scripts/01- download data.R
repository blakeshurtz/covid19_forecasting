#this is the only script to run
#it downloads the latest data
#cleans it (you need to add WHO final date data manually)
#then runs all other scripts
library(lubridate)
library(tidyverse)

temp = tempfile(fileext = ".xlsx")
#URL with today() function
dataURL <- paste0("https://www.ecdc.europa.eu/sites/default/files/documents/
COVID-19-geographic-disbtribution-worldwide-", Sys.Date(), ".xlsx")

#original URL for reference
#dataURL <- "https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-2020-05-10.xlsx"
download.file(dataURL, destfile = temp, mode = 'wb')
d <- readxl::read_excel(temp)


my_fn <- function(x) {
d %>%  select(dateRep, deaths, countriesAndTerritories, countryterritoryCode) %>% 
  filter(countryterritoryCode == x) %>% 
  #filter(deaths > 0) %>% 
  arrange(dateRep) %>% 
  mutate(cum_deaths = cumsum(deaths)) %>% 
  select(dateRep, cum_deaths) %>% 
  rename(date = dateRep, y = cum_deaths)
}

usa_reg <- my_fn("USA")
china_reg <- my_fn("CHN")
france_reg <- my_fn("FRA") 
italy_reg <- my_fn("ITA")
japan_reg <- my_fn("JPN")
sk_reg <- my_fn("KOR")
brazil_reg <- my_fn("BRA")
india_reg <- my_fn("IND")

#data from situation report
'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/'
usa_reg[nrow(usa_reg), ]$y = 76916
china_reg[nrow(china_reg), ]$y = 4643
france_reg[nrow(france_reg), ]$y = 26338
italy_reg[nrow(italy_reg), ]$y = 30560
japan_reg[nrow(japan_reg), ]$y = 621
sk_reg[nrow(sk_reg), ]$y = 256
brazil_reg[nrow(brazil_reg), ]$y = 10627
india_reg[nrow(india_reg), ]$y = 2206

#run other scripts
source('scripts/02-bins.r')
source('scripts/03-usa plot.r')
source('scripts/04-china plot.r')
source('scripts/05-france plot.r')
source('scripts/06-italy plot.r')
source('scripts/07-japan plot.r')
source('scripts/08-sk plot.r')
source('scripts/09-brazil plot.r')
source('scripts/10-india plot.r')
