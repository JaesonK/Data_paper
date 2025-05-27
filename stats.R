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

