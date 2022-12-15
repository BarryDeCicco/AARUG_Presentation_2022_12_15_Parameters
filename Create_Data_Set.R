

# File:  Create_Data_Set

# This file creates a data set for the rest of the files to use.

####            Load packages                    ####
library(tidyverse)
library(ggplot2)
library(lubridate)
####            End of Load Packages             ####


set.seed(123456)


#### Create Columns, then bind to become a data frame           ####

date_var <- seq(ymd('2020-01-01'),ymd('2022-12-31'),by='days')
quarter_var <- lubridate::quarter(date_var)
random_var <- rnorm(1096,0,1)
adjustment <-
data_set <- rbind(date_var, quarter_var, random_var) %>% as.data.frame()

data_set <- data_set %>% ungroup() %>%
  dplyr::mutate(adjustment = ifelse(quarter_var == 1, 3,0)
  )

)
)


#### END OF Create Columns, then bind to become a data frame           ####






