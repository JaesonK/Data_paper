#Economic Activities and Agriculture
socio_economic_data<- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
view(socio_economic_data)
total <- nrow(socio_economic_data)
socio_economic_data %>%
  group_by(department) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  group_by(commune) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  group_by(locality_type) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  group_by(gender) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  mutate(age_group = cut(age, breaks = c(14, 40,  60, Inf),
                         labels = c("14–40", "40–60", "60+"))) %>%
  group_by(age_group) %>%
  summarise(nb = n(),
            proportion = round(nb / total * 100, 1))

socio_economic_data %>%
  group_by(education_level) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  group_by(marital_status) %>%
  summarise(
    nb = n(),
    proportion = round(nb / total * 100, 1)
  )

socio_economic_data %>%
  mutate(age_group = cut(household_size, breaks = c(0, 5,  10, 15,Inf),
                         labels = c("1–5", "5–10", "10-15", "15+"))) %>%
  group_by(age_group) %>%
  summarise(nb = n(),
            proportion = round(nb / total * 100, 1))

activity_agri_data <- readRDS("Desktop/Nicolas Paget/data_paper_Project/filtered_data/activity_agri_data.rds")
view(activity_agri_data)
