
# Convert Oui/Non into O/1 and fill NA with 0 

#Economic Activities and Agriculture
activitie_agri_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/activitie_agri_data.rds")
view(activitie_agri_data)
activitie_agri_data[is.na(activitie_agri_data)] <- 0

#Languages data
languages_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
languages_data[is.na(languages_data)] <- 0
view(languages_data)

# Socio Economic data
socio_economic_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
socio_economic_data[is.na(socio_economic_data)] <- 0
view(socio_economic_data)

#Producer Organizations and Other Structures
org_struct_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/org_struct_data.rds")
org_struct_data[is.na(org_struct_data)] <- 0
view(org_struct_data)

# Digital platforms
digital_platform_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/digital_platform_data.rds")
digital_platform_data[is.na(digital_platform_data)] <- 0
view(digital_platform_data)

# Phone Usage
usage_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_data.rds")
usage_data <- usage_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    TRUE ~ .
  )))
usage_data <- usage_data %>%
  mutate(across(where(is.numeric), ~ replace_na(., 0))) %>%
  mutate(across(where(is.character), ~ replace_na(., "0")))
usage_data <- usage_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
view(usage_data)

#Crops name
crop_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/crop_data.rds")
crop_data[is.na(crop_data)] <- 0
view(crop_data)

#Capacities data
capacities_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/capacities_data.rds")
capacities_data <- capacities_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    TRUE ~ .
  )))
capacities_data <- capacities_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
capacities_data[is.na(capacities_data)] <- 0
view(capacities_data)
