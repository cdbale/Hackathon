#############################################################################
########### Data Cleaning for South Korea COVID-19 Patients Data ############
### Project Contributors: Matthew Schneider, Jordan Fischer, Cameron Bale ###
#############################################################################

# See data description here: https://www.kaggle.com/kimjihoo/ds4c-what-is-this-dataset-detailed-description.
# Total data includes:
#   - Case.csv: Data of COVID-19 infection cases in South Korea
# - PatientInfo.csv: Epidemiological data of COVID-19 patients in South Korea
# - PatientRoute.csv: Route data of COVID-19 patients in South Korea
# - Time.csv: Time series data of COVID-19 status in South Korea
# - TimeAge.csv: Time series of COVID-19 status in terms of the age in South Korea
# - TimeGender.csv: Time series data of COVID-19 status in terms of gender in South Korea
# - TimeProvince.csv: Time series data of COVID-19 status in terms of the province in South Korea
# - Region.csv: Location and statistical data of the regions in South Korea
# - Weather.csv: Data of the weather in the regions of South Korea
# - SearchTrend: Trend data of the keywords searched in NAVER which is one of the largest portals in South Korea
# - SeoulFloating: Data of floating population in Seoul, South Korea
# - Policy: Data of the government policy for COVID-19 in South Korea

#################################
### Reading and Cleaning Data ###
#################################

# load libraries
library(tidyverse)

# Read in patient epidemiological information and route information.
p_info <- read_csv(file = 'Data/PatientInfo.csv')
p_route <- read_csv(file = 'Data/PatientRoute.csv')

# merge data sets (join epidemiological variables to route information)
full <- p_route %>%
  left_join(p_info, by = c('patient_id', 'global_num', 'province', 'city')) %>%
  mutate_at(c('patient_id', 'infected_by'), as.character) # convert ID variables from numeric to characters

save(full, file = 'Data/korea_data_clean.RData')

################################
### Basic Summary Statistics ###
################################

# number of unique values for each variable, not including NA
n_unique_values <- full %>%
  summarise_all(n_distinct, na.rm = TRUE)

# min and max values for relevant variables
min_max_values <- full %>%
  summarize_at(c('date', 'latitude', 'longitude', 
                 'birth_year', 'infection_order', 'contact_number', 
                 'symptom_onset_date', 'confirmed_date', 'released_date',
                 'deceased_date'), c(min, max), na.rm = TRUE)
