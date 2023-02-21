

# File:  Create_Data_Set

# This file creates a data set for the rest of the files to use.

####            Load packages                    ####
library(tidyverse)
library(ggplot2)
library(lubridate)
####            End of Load Packages             ####


set.seed(123456)


#### Import Data           ####

data_file <- read.csv("inst/file.csv") %>%
  dplyr::mutate(Date = as.Date(Date))

#### END OF Create Columns, then bind to become a data frame           ####

####  Make Graph                                                       ####

region_selected <- "Europe"
plot_title <- paste0("Line Chart for Region = ", region_selected)

data_file %>%
  dplyr::filter(Region == region_selected) %>%
  ggplot(.,aes(x = Date, y=Value)) +
    geom_line() +
    labs(title=plot_title,x="Date", y = "Value")+
    theme_classic() +
  scale_x_date(date_breaks = "3 months",date_labels = "%m-%Y") +
  theme(axis.text.x=element_text(angle=60, hjust=1))



  region_selected <-  `r params$region`





