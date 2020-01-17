library(readr)
library(dplyr)
library(stringr)
library(tidyr)
library(dplyr)
library(readxl)

usethis::use_package("tibble")





#### nyc311
fields <- c("Unique Key", "Created Date", "Closed Date", "Agency", "Agency Name",
            "Complaint Type", "Descriptor", "Incident Zip" , "Status", "Resolution Description",
            "Resolution Action Updated Date", "Borough", "Latitude", "Longitude")

nyc311 <- read_csv("input_data/311_Service_Requests_Jan2020_narrow.csv") %>%
  select(-Address)



### Chicago employees
chi_emps <- read_csv("input_data/ChicagoEmployeesOct2019.csv")

### Toronto highrises


inspections <- read_csv("input_data/Torontohighrises.csv") %>%
  separate(Opened, into = c("Opened", "OpenTime"), sep = " ") %>%
  separate(Closed, into = c("Closed", "ClosedTime"), sep = " ") %>%
  select(id, Opened, Closed, Address, Desc, Lat, Lon, Ward) %>%
  separate(Desc, into = c("Code", "Desc"), sep = " ", extra = "merge")




#### Movies
movies <- read_csv("input_data/movie_profit.csv")
movies$release_date <- lubridate::mdy(movies$release_date)
movies <- dplyr::filter(movies, release_date > ISOdate(1999, 12, 31),
                        release_date < ISOdate(2018, 1, 1)) %>%
  select(-1)


#### NBA 2018-2019
nba1819 <- read_csv("input_data/nba1819.csv") %>% dplyr::select(-Box) %>%
  mutate(OT = ifelse(is.na(OT), FALSE, TRUE))

cars2018 <- read_csv("input_data/cars2018.csv")

groceries <- read_csv("input_data/prices.csv")


#### Sales and inventories

#sales <- read_xlsx("input_data/US_Sales_Inventories.xlsx", sheet = "Sales",skip = 14)
#inventories <- read_xlsx("input_data/US_Sales_Inventories.xlsx", sheet = "Inventories", skip = 14)

#sales <- sales[complete.cases(sales), ]
#inventories <- inventories[complete.cases(inventories), ]

rafa_novak <- read_csv("input_data/rafanovak.csv")
apple <- read_csv("input_data/apple.csv")

areas <- read_csv("input_data/areas.csv")
populations <- read_csv("input_data/populations.csv")
nyc_sat10 <- read_csv("input_data/nyc_sat10.csv")
nyc_sat12 <- read_csv("input_data/nyc_sat12.csv")
us_unemp <- read_csv("input_data/unemp.csv")


lara <- notitia::lara

save(nyc311,  file = "data/nyc311.RData")
write_csv(nyc311, "../python/jupyter/data/nyc311.csv")

save(movies,  file = "data/movies.RData")
write_csv(movies, "../python/jupyter/data/movies.csv")

save(chi_emps, file = "data/chi_emps.RData")
write_csv(chi_emps, "../python/jupyter/data/chi_emps.csv")

save(sales, file = "data/sales.RData")
write_csv(sales, "../python/jupyter/data/sales.csv")


save(inventories, file = "data/inventories.RData")
write_csv(inventories, "../python/jupyter/data/inventories.csv")


save(rafa_novak, file = "data/rafa_novak.RData")
write_csv(rafa_novak, "../python/jupyter/data/rafa_novak.csv")

save(apple, file = "data/apple.RData")
write_csv(apple, "../python/jupyter/data/apple.csv")

save(areas, file = "data/areas.RData")
write_csv(areas, "../python/jupyter/data/areas.csv")

save(populations, file = "data/populations.RData")
write_csv(populations, "../python/jupyter/data/populations.csv")

save(nyc_sat10, file = "data/nyc_sat10.RData")
write_csv(nyc_sat10, "../python/jupyter/data/nyc_sat10.csv")

save(nyc_sat12, file = "data/nyc_sat12.RData")
write_csv(nyc311, "../python/jupyter/data/nyc_sat12.csv")

save(us_unemp, file = "data/us_unemp.RData")
write_csv(nyc311, "../python/jupyter/data/us_unemp.csv")

save(lara, file = "data/lara.RData")
write_csv(nyc311, "../python/jupyter/data/lara.csv")

save(inspections, file = "data/inspections.RData")
write_csv(inspections, "../python/jupyter/data/inspections.csv")

save(nba1819, file = "data/nba1819.RData")
write_csv(highrises, "../python/jupyter/data/nba1819.csv")

save(cars2018, file = "data/cars2018.RData")
write_csv(cars2018, "../python/jupyter/data/cars.csv")

save(groceries, file = "data/groceries.RData")
write_csv(groceries,  "../python/jupyter/data/groceries.csv")

devtools::document()





