
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
    . == "Ville" ~ "Urban",
    . == "Village" ~ "Rural",
    . == "Campement" ~ "Rural",
    . == "Marié (e)" ~ "Married",
    . == "Veuf/Veuve" ~ "Widow",
    . == "Célibataire" ~ "Not married",
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


#Crops name
crop_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/crop_data.rds")
crop_data[is.na(crop_data)] <- 0
view(crop_data)

#Capacity and usage data
usage_cap_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_cap_data.rds")

# Set Non = 0 and Oui = 1
usage_cap_data <- usage_cap_data %>%
  mutate(across(where(is.character), ~ case_when(
    . == "Oui" ~ "1",
    . == "Non" ~ "0",
    TRUE ~ .
  )))
usage_cap_data <- usage_cap_data %>%
  mutate(across(where(~ all(.x %in% c("0", "1"))), ~ as.numeric(.x)))

# If cap_* == 0, then all usage_* are set to 0
usage_cap_data <- usage_cap_data %>%
  mutate(across(
    starts_with("usage_agri_call_sms"),
    ~ if_else(cap_call_sms == 0, 0, .)
  ))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_vocal"),
                ~ if_else(cap_vocal == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_photos"),
                ~ if_else(cap_photos == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_videos"),
                ~ if_else(cap_videos == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_messages"),
                ~ if_else(cap_messages == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_group"),
                ~ if_else(cap_join_group_link == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_info"),
                ~ if_else(cap_info_search_share == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_buy"),
                ~ if_else(cap_buy_product_online == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_recruit"),
                ~ if_else(cap_recruit_rent_online == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_market"),
                ~ if_else(usage_phone_market == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_agri_knowledge"),
                ~ if_else(usage_agri_phone_knowledge == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_app"),
                ~ if_else(cap_install_app == 0, 0, .),
                .names = "{.col}"))

usage_cap_data <- usage_cap_data %>%
  mutate(across(starts_with("usage_momo"),
                ~ if_else(usage_phone_momo == 0, 0, .),
                .names = "{.col}"))

# Convert characters to numeric
usage_cap_data <- usage_cap_data %>%
  mutate(across(
    where(~ is.character(.x) && all(grepl("^\\d+$", .x) | is.na(.x))), 
    as.numeric
  ))

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
    . == "Iphone" ~ "Smartphone",
    . == "Smartphone/Androïd" ~ "Smartphone",
    . == "Téléphone simple" ~ "Basic",
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
    . == "Autres (préciser)" ~ "0",
    . == "100 F" ~ "100",
    TRUE ~ .
  )))
access_data <- access_data%>%
  mutate(across(where(is.numeric), ~ replace_na(., 0))) %>%
  mutate(across(where(is.character), ~ replace_na(., "0")))
access_data <- access_data %>%
  mutate(across(
    where(~ is.character(.x) && all(grepl("^\\d+$", .x) | is.na(.x))), 
    as.numeric
  ))
view(access_data)

# Save the cleaned data

write_rds(usage_cap_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_cap_data.rds")

bases <- list(socio_economic_data,activitie_agri_data,crop_data, languages_data, org_struct_data, access_data, usage_cap_data, digital_platform_data)
db_gardener<- reduce(bases, full_join, by = "id")
write_rds(db_gardener, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/db_gardener.rds")
view(db_gardener)
