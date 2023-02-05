## this script loads the data and calculates some summary statistics

## load libraries
library("here")

## set location of the data directory 
data_dir <- here("data")

## load data file
pisaster_data <- readRDS(here(data_dir, "pisaster_data.Rds"))

head(pisaster_data)

## peek at the data
dput(pisaster_data)

## load in the data
pisaster_data <- structure(list(2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 
               2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 
               2019, 2019, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 
               2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 
               2020, 2020, "a", "a", "a", "a", "a", "b", "b", "b", "b", 
               "b", "c", "c", "c", "c", "c", "d", "d", "d", "d", "d", "a", 
               "a", "a", "a", "a", "b", "b", "b", "b", "b", "c", "c", "c", 
               "c", "c", "d", "d", "d", "d", "d", 1L, 2L, 3L, 4L, 5L, 1L, 
               2L, 3L, 4L, 5L, 1L, 2L, 3L, 4L, 5L, 1L, 2L, 3L, 4L, 5L, 1L, 
               2L, 3L, 4L, 5L, 1L, 2L, 3L, 4L, 5L, 1L, 2L, 3L, 4L, 5L, 1L, 
               2L, 3L, 4L, 5L, 6L, 10L, 13L, 9L, 9L, 11L, 7L, 10L, 12L, 
               8L, 11L, 8L, 11L, 14L, 10L, 8L, 11L, 8L, 13L, 4L, 5L, 15L, 
               4L, 14L, 12L, 11L, 10L, 10L, 14L, 7L, 10L, 8L, 11L, 12L, 
               11L, 12L, 9L, 9L, 15L, 9L), dim = c(40L, 4L), dimnames = list(
                 NULL, c("year", "site", "plot", "count")))

## calculate mean counts across all years, sites, and plots
mean_count <- mean(pisaster_data$count)
