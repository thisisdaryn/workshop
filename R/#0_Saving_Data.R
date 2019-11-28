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

nyc311 <- read_csv("input_data/nyc311Oct2019.csv")

set.seed(2001)
nyc311 <- nyc311[sample(dim(nyc311)[1], 34567, replace = FALSE), ] %>%
  arrange(Created)





### Chicago employees
chi_emps <- read_csv("input_data/Current_Employee_Names__Salaries__and_Position_Titles.csv")



#### Movies
movies <- read_csv("input_data/movie_profit.csv")
movies$release_date <- lubridate::mdy(movies$release_date)
movies <- dplyr::filter(movies, release_date > ISOdate(1999, 12, 31),
                        release_date < ISOdate(2018, 1, 1)) %>%
  select(-1)


#### NBA 2018-2019
nba1819 <- read_csv("input_data/nba1819.csv") %>% dplyr::select(-Box)


#### Sales and inventories

sales <- read_xlsx("input_data/US_Sales_Inventories.xlsx", sheet = "Sales",skip = 14)
inventories <- read_xlsx("input_data/US_Sales_Inventories.xlsx", sheet = "Inventories", skip = 14)

sales <- sales[complete.cases(sales), ]
inventories <- inventories[complete.cases(inventories), ]

rafa_novak <- read_csv("input_data/rafanovak.csv")
apple <- read_csv("input_data/apple.csv")

areas <- read_csv("input_data/areas.csv")
populations <- read_csv("input_data/populations.csv")
nyc_sat10 <- read_csv("input_data/nyc_sat10.csv")
nyc_sat12 <- read_csv("input_data/nyc_sat12.csv")
us_unemp <- read_csv("input_data/unemp.csv")


lara <- notitia::lara

save(nyc311,  file = "data/nyc311.RData")
save(movies,  file = "data/movies.RData")
save(chi_emps, file = "data/chi_emps.RData")
save(sales, file = "data/sales.RData")
save(inventories, file = "data/inventories.RData")
save(rafa_novak, file = "data/rafa_novak.RData")
save(apple, file = "data/apple.RData")
save(areas, file = "data/areas.RData")
save(populations, file = "data/populations.RData")
save(nyc_sat10, file = "data/nyc_sat10.RData")
save(nyc_sat12, file = "data/nyc_sat12.RData")
save(us_unemp, file = "data/us_unemp.RData")
save(lara, file = "data/lara.RData")

devtools::document()





