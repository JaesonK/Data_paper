
# Convert Oui/Non into O/1 and fill NA with 0 

#Economic Activities and Agriculture
activity_agri_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/activity_agri_data.rds")
activity_agri_data <- activity_agri_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Élevage" ~ "Farming",
    . == "Commercialisation  de divers articles" ~ "Marketing of various products",
    . == "Conducteur de moto/ tricycle" ~ "Motorcycle/Tricycle Driver",
    . == "Fonctionnaire d’Etat/d’entreprise privée/ONG" ~ "0",
    . == "Transformation de produits agricoles" ~ "Processing of agricultural products",
    . == "Artisanat" ~ "Craftsmanship",
    . == "Commercialisation des produits agricoles" ~ "Marketing of agricultural products",
    . == "Conducteur de voiture" ~ "Driver",
    . == "Pêche" ~ "Fishing",
    TRUE ~ .
  )))
activity_agri_data <- activity_agri_data %>%
  mutate(across(where(is.numeric), ~ replace_na(., 0))) %>%
  mutate(across(where(is.character), ~ replace_na(., "0")))
activity_agri_data <- activity_agri_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
view(activity_agri_data)


#Languages data
languages_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
languages_data[is.na(languages_data)] <- 0
view(languages_data)

# Socio Economic data
socio_economic_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
socio_economic_data <- socio_economic_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    . == "Féminin" ~ "Woman",
    . == "Masculin" ~ "Man",
    . == "Alphabétisé" ~ "Literate",
    . == "Aucune éducation formelle" ~ "No formal education",
    . == "Ecole coranique" ~ "Quranic school",
    . == "Primaire" ~ "Primary school",
    . == "Secondaire second cycle" ~ "Secondary school",
    . == "Universitaire" ~ "High education or higher",
    . == "secondaire premier cycle" ~ "Secondary school",
    TRUE ~ .
  )))
socio_economic_data <- socio_economic_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
socio_economic_data[is.na(socio_economic_data)] <- 0
view(socio_economic_data)

#Producer Organizations and Other Structures
org_struct_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/org_struct_data.rds")
org_struct_data <- org_struct_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    TRUE ~ .
  )))
org_struct_data <- org_struct_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
org_struct_data[is.na(org_struct_data)] <- 0
view(org_struct_data)

# Digital platforms
digital_platform_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/digital_platform_data.rds")
digital_platform_data <- digital_platform_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    TRUE ~ .
  )))
digital_platform_data[is.na(digital_platform_data)] <- "0"
digital_platform_data <- digital_platform_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
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

#Access data
access_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/access_data.rds")
access_data <- access_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    . == "Domestique individuel" ~ "Domestic individual",
    . == "Domestique en branchement commun" ~ "Shared utility connection",
    . == "Point de recharge communautaire" ~ "Community charging station",
    . == "Panneaux solaire" ~ "Solar panels",
    . == "Aucun" ~ "None",
    . == "Groupe électrogène" ~ "Power generator",
    . == "Bon réseau" ~ "Good network",
    . == "Réseau faible" ~ "Weak network",
    . == "Réseau moyen" ~ "Average network",
    . == "Réseau très faible" ~ "Very weak network",
    . == "Très bon réseau" ~ "Very good network",
    . == "Quotidienne" ~ "Daily",
    . == "Plus rarement" ~ "More rarely",
    . == "Mensuelle" ~ "Monthly",
    . == "Hebdomadaire" ~ "Weekly",
    TRUE ~ .
  )))
access_data <- access_data%>%
  mutate(across(where(is.numeric), ~ replace_na(., 0))) %>%
  mutate(across(where(is.character), ~ replace_na(., "0")))
access_data <- access_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))
view(access_data)

# Save the cleaned data
write_rds(activitie_agri_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/activitie_agri_data.rds")
write_rds(access_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/access_data.rds")
write_rds(languages_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
write_rds(socio_economic_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
write_rds(org_struct_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/org_struct_data.rds")
write_rds(digital_platform_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/digital_platform_data.rds")
write_rds(usage_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_data.rds")
write_rds(crop_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/crop_data.rds")
write_rds(capacities_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/capacities_data.rds")
