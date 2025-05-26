

library(tidyverse) # For data manipulation (dplyr, readr, ggplot2, etc.)
library(janitor)   # For cleaning column names
library(dplyr)     # For quick summary statistics
library(readxl)

data <- read_excel("Desktop/Nicolas Paget/data_paper_Project/2023-10-26-BASE-FINALE-Benin.xlsx")
View(data)

socio_economic_data <- data %>%
    select(
      department="Departement",
      commune="Commune",
      locality_type="Type de localité",	
      gender="Sexe de l’enquêté",	
      age="Age de l’enquêté",	
      has_own_phone="Disposez-vous d'un  numéro de téléphone qui vous appartient ?",	
      sim_card_count="SIM",	
      education_level="Niveau-instruction",	
      marital_status="Situation matrimoniale",	
      household_size="Taille de votre ménage"	
    )


# Economic Activities and Agriculture
activitie_agri_data <- data %>%
    select(
      main_activity_time="Quelle est votre activité principale en terme de temps alloué",	
      main_activity_income="Quelle est votre activité principale en terme de revenu",	
      agri_activity_market_gardening="Quelles sont vos principales activités agricoles ?/Culture maraîchère",	
      agri_activity_food_crops="Quelles sont vos principales activités agricoles ?/Culture vivrière",	
      agri_activity_cash_crops="Quelles sont vos principales activités agricoles ?/Cultures de rente",	
      agri_activity_livestock="Quelles sont vos principales activités agricoles ?/Elevage",	
      agri_activity_fishing="Quelles sont vos principales activités agricoles ?/Pêche",	
      agri_activity_agri_trade="Quelles sont vos principales activités agricoles ?/Commerce de produit agricole",	
      agri_activity_agri_processing="Quelles sont vos principales activités agricoles ?/Transformation de produits agricoles",	
      agri_activity_hydro_amenagement="Quelles sont vos principales activités agricoles ?/hydrAménagement hydroagricole",	
      income_contrib_market_gardening="Contribution au revenu annuel /Culture maraîchère (%)",	
      income_contrib_food_crops="Contribution au revenu annuel /Culture vivrière (%)",	
      income_contrib_cash_crops="Contribution au revenu annuel/ Cultures de rente (%)",	
      income_contrib_livestock="Contribution au revenu annuel /Elevage (%)",	
      income_contrib_fishing="Contribution au revenu annuel/ Pêche (%)",	
      income_contrib_agri_trade="Contribution au revenu annuel/ Commerce de produit agricole (%)",	
      income_contrib_other_agri="Contribution au revenu annuel/ autre activité agricole  (%)",	
      income_contrib_extra_agri="Contribution au revenu annuel/ autre activité extra agricole  (%)"	
      
      )

      # Languages
languages_data <- data %>%
    select(
      lang_eng="Quelle langue pratiquez-vous ?/Anglais",
      lang_adja="Quelle langue pratiquez-vous ?/Adja",
      lang_aizo="Quelle langue pratiquez-vous ?/Aïzo",
      lang_bariba="Quelle langue pratiquez-vous ?/Bariba",
      lang_berba="Quelle langue pratiquez-vous ?/Berba",
      lang_dendi="Quelle langue pratiquez-vous ?/Dendi",
      lang_djerma="Quelle langue pratiquez-vous ?/Djerma",
      lang_fr="Quelle langue pratiquez-vous ?/Français",
      lang_fon="Quelle langue pratiquez-vous ?/Fon",
      lang_goun="Quelle langue pratiquez-vous ?/Goun",
      lang_lokpa="Quelle langue pratiquez-vous ?/Lokpa-Yom",
      lang_mahi="Quelle langue pratiquez-vous ?/Mahi",
      lang_mina="Quelle langue pratiquez-vous ?/Mina",
      lang_nago="Quelle langue pratiquez-vous ?/Nago",
      lang_ditamari="Quelle langue pratiquez-vous ?/Ditamari",
      lang_weme="Quelle langue pratiquez-vous ?/Wémè",
      lang_peulh="Quelle langue pratiquez-vous ?/Peulh",
      lang_torri="Quelle langue pratiquez-vous ?/Torri",
      lang_yoruba="Quelle langue pratiquez-vous ?/Yorouba",
      lang_wama="Quelle langue pratiquez-vous ?/Wama",
      lang_idaatcha="Quelle langue pratiquez-vous ?/idaatcha",
      lang_sahoue="Quelle langue pratiquez-vous ?/sahouè",
      lang_other="Quelle langue pratiquez-vous ?/autre",
      lang_eng_spoken="Compétences langues : Anglais/Parlé",
      lang_eng_understood="Compétences langues : Anglais/Compris",
      lang_fr_spoken="Compétences langues : Français/Parlé",
      lang_fr_understood="Compétences langues : Français/Compris",
      lang_fr_read="Compétences langues : Français/Lu",
      lang_fr_wrtitten="Compétences langues : Français/Ecrit"
    )


      #Producer Organizations and Other Structures
org_struct_data <- data %>%
    select(
      member_producer_org="Appartenez-vous à une/ou plusieurs organisation (s) de producteurs ?",
      num_producer_orgs="A combien organisation (s) de producteurs de producteurs appartenez-vous ?",
      experience_other_structure="Avez-vous une expérience de travail avec des structures autres qu’une organisation/coopérative ?",
      structure_inrab="Quelles structures ?/INRAB",
      structure_atda="Quelles structures ?/ATDA",
      structure_university="Quelles structures ?/UNIVERSITE",
      structure_ngo="Quelles structures ?/ONG",
      structure_project="Quelles structures ?/Projets",
      structure_sfd="Quelles structures ?/SFD",
      structure_gov="Quelles structures ?/Structures d'Etats",
      structure_other="Quelles structures ?/Autres"
    )

      #Digital platforms
digital_platform_data <- data %>%
    select(
      platform_family="ZK-Etes-vous intégrés dans des plateformes numériques  familiale ?",	
      platform_friend="ZK-Etes-vous intégrés dans des plateformes numériques  amicale ?",	
      platform_1_integrated="NN-1",	
      platform_1_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_1_app_type="ZZ-Application de la plateforme",	
      platform_2_integrated="NN-2",	
      platform_2_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_2_app_type="ZZ-Application de la plateforme",	
      platform_3_integrated="NN-3",	
      platform_3_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_3_app_type="ZZ-Application de la plateforme",	
      platform_4_integrated="NN-4",	
      platform_4_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_4_app_type="ZZ-Application de la plateforme",	
      platform_5_integrated="NN-5",	
      platform_5_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_5_app_type="ZZ-Application de la plateforme",	
      platform_6_integrated="NN-6",	
      platform_6_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_6_app_type="ZZ-Application de la plateforme",	
      platform_7_integrated="NN-7",	
      platform_7_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_7_app_type="ZZ-Application de la plateforme",	
      platform_8_integrated="NN-8",	
      platform_8_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_8_app_type="ZZ-Application de la plateforme",	
      platform_9_integrated="NN-9",	
      platform_9_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_9_app_type="ZZ-Application de la plateforme",	
      platform_10_integrated="NN-10",	
      platform_10_years_member="Il y a de cela comien d'année avez-vous adhéré à cette plateforme  ?",	
      platform_10_app_type="ZZ-Application de la plateforme",	
      platform_total="NN-NBRE-PLATEFORME",	
      platform_others="Etes-vous intégrés dans plus de 10  plateformes numérique avec lesquels vous travaillez avec d’autres ?",	
      uses_whatsapp="ZA-WHATSAPP",	
      uses_facebook="ZA-Facebook/Messenger",	
      uses_google="ZA-Google",	
      uses_no_network="Aucun réseau"
    )

      
      # Crop Names
crop_data <- data %>%
    select(
      crop_tomato="nom de la culture/Tomate",
      crop_carrot="nom de la culture/Carotte",
      crop_lettuce="nom de la culture/Laitue",
      crop_onion="nom de la culture/Oignon",
      crop_basil="nom de la culture/Tchayo",
      crop_peper="nom de la culture/Piment",
      crop_vegetable="nom de la culture/Gboman",
      crop_okra="nom de la culture/Gombo",
      crop_cucumber="nom de la culture/Concombre",
      crop_pigweed="nom de la culture/Amarante",
      crop_cabbage="nom de la culture/Choux",
      crop_crincrin="nom de la culture/Crincrin",
      crop_vernonia="nom de la culture/vernonia",
      crop_other="nom de la culture/Autre",
      cost_simple_phone="BB-Cout-telephone-simple"
    )


      # Phone Usage

usage_data <- data %>%
    select(
      android="ANDROID",
      phone_type="Type terminal",
      use_tool_phone="Téléphone portable",
      use_tool_tablet="Tablette",
      use_tool_laptop="Ordinateur",
      use_tool_spotlight="Projecteur",
      use_tool_drone="Drone",
      app_use_google="Quelles sont les applications que vous utilisez avec votre téléphone ?/Google",
      app_use_whatsapp="Quelles sont les applications que vous utilisez avec votre téléphone ?/Whatsapp",
      app_use_facebook="Quelles sont les applications que vous utilisez avec votre téléphone ?/Facebook/Messenger",
      app_use_youtube="Quelles sont les applications que vous utilisez avec votre téléphone ?/YouTube",
      app_use_linkedin="Quelles sont les applications que vous utilisez avec votre téléphone ?/LinkedIn",
      app_use_instagramm="Quelles sont les applications que vous utilisez avec votre téléphone ?/Instagram",
      app_use_tktok="Quelles sont les applications que vous utilisez avec votre téléphone ?/TikTok",
      app_use_snap="Quelles sont les applications que vous utilisez avec votre téléphone ?/Snapchat",
      app_use_other_no_agri="Quelles sont les applications que vous utilisez avec votre téléphone ?/Autres applications non agricoles",
      app_use_other_agri="Quelles sont les applications que vous utilisez avec votre téléphone ?/Autres applications agricoles",
      phone_use_comm_network="ZO-Utilisez-vous le téléphone pour communiquer avec votre réseau (famille, amis, relations marchandes…etc.) ?",
      phone_use_comm_network_freq="BT-Si oui, à quelle fréquence ?",
      phone_use_momo="ZO-Utilisez-vous le téléphone pour faire les opérations momo?",
      momo_use_pay="Si oui, usage momo/Payer",
      momo_use_receive="Si oui, usage momo/Recevoir",
      momo_use_save="Si oui, usage momo/Epargner",
      momo_use_tontine="Si oui, usage momo/Participer à des tontines",
      momo_use_secur="Si oui, usage momo/Sécuriser les payements",
      momo_use_credit="Si oui, usage momo/Recevoir un crédit de microfinance",
      momo_use_refund="Si oui, usage momo/Rembourser un emprunt",
      phone_use_market="ZO-Utilisez-vous le téléphone pour accéder aux marchés ?",
      market_use_freq="Si oui, à quelle fréquence ?",
      market_use_status="Si oui, usage marché/Placer vos produits (annoncer via des statuts l’existence de produits en vente ?),",
      market_use_advert="Si oui, usage marché/Faire la publicité de vos produits",
      market_use_price="Si oui, usage marché/Connaître les prix sur les différents marchés",
      market_use_nego_prod="Si oui, usage marché/Négocier la vente de vos produits",
      market_use_loc="Si oui, usage marché/Localiser des intrants (semences, produits)",
      market_use_col="Si oui, usage marché/Collecter les prix des intrants chez les différents fournisseurs",
      market_use_nego_input="Si oui, usage marché/Négocier les prix des intrants",
      market_use_hiring="Si oui, usage marché/Rechercher de la main d’œuvre",
      market_use_material_agri="Si oui, usage marché/Réserver et louer des outils agricoles",
      phone_use_knowledge="ZO-Utilisez-vous le téléphone pour acquérir et échanger des connaissances ?",
      knowledge_use_freq="Si oui, à quelle fréquence ?",
      knowledge_use_agri_quest="Si oui, usage/Poser des questions sur des problématiques agricoles à votre famille ou des amis",
      knowledge_use_whatsapp_quest="Si oui, usage/Poser des questions dans des groupes WhatsApp",
      knowledge_use_agri_video="LJ-Si oui, usage/Regarder des vidéos sur les pratiques agricoles",
      knowledge_use_search_read="LJ-Si oui, usage/Rechercher et lire",
      knowledge_use_acces_social_media="Si oui, comment accédez-vous à ces connaissances ? via/Utilisation des réseaux sociaux (WhatsApp, Messenger, Facebook, Tiktok, Instagram)",
      knowledge_use_acces_specific_platform="Si oui, comment accédez-vous à ces connaissances ? via/Utilisation des plateformes spécifiques (lesquelles ?)",
      knowledge_use_acces_youtube_search="Si oui, comment accédez-vous à ces connaissances ? via/Recherche sur Youtube",
      knowledge_use_acces_internet_search="Si oui, comment accédez-vous à ces connaissances ? via/Recherche sur Internet",
      knowledge_use_acces_sd_card="Si oui, comment accédez-vous à ces connaissances ? via/Achat des cartes SD préremplies",
      knowledge_use_acces_bluetooth="Si oui, comment accédez-vous à ces connaissances ? via/Transfert des fichiers via Bluetooth"
    )
      
      
      # Capacities
capacities_data <- data %>%
    select(
      cap__call_sms="BC-capacite-Passer des appels, envoyer des SMS",
      cap_call_sms_gardener="Si Passer des appels, envoyer des SMS, à qui?/Maraîcher",
      cap_call_sms_supplier="Si Passer des appels, envoyer des SMS, à qui?/Fournisseur d’intrant",
      cap_call_sms_collector="Si Passer des appels, envoyer des SMS, à qui?/Collecteur",
      cap_call_sms_consumer="Si Passer des appels, envoyer des SMS, à qui?/Consommateur",
      cap_call_sms_advisor_agri="Si Passer des appels, envoyer des SMS, à qui?/Technicien / conseiller agricole",
      cap_call_sms_agent_atda="Si Passer des appels, envoyer des SMS, à qui?/Agent d’ATDA",
      cap_call_sms_agent_ddaep="Si Passer des appels, envoyer des SMS, à qui?/Agent du DDAEP",
      cap_call_sms_colleague="Si Passer des appels, envoyer des SMS, à qui?/Collègue d’une autre organisation paysanne",
      cap_call_sms_carrier="Si Passer des appels, envoyer des SMS, à qui?/Transporteur",
      cap_call_sms_friend="Si Passer des appels, envoyer des SMS, à qui?/Amis",
      cap_call_sms_parent="Si Passer des appels, envoyer des SMS, à qui?/Parents",
      cap_call_sms_employee="Si Passer des appels, envoyer des SMS, à qui?/Gestionnaire de l'exploitation/employé",
      cap__vocal="BC-Savez-vous ?  Envoyer/Ecouter un message vocal",
      cap_vocal_gardener="Si Envoyer un message vocal, à qui?/Maraîcher",
      cap_vocal_supplier="Si Envoyer un message vocal, à qui?/Fournisseur d’intrant",
      cap_vocal_collector="Si Envoyer un message vocal, à qui?/Collecteur",
      cap_vocal_consumer="Si Envoyer un message vocal, à qui?/Consommateur",
      cap_vocal_advisor_agri="Si Envoyer un message vocal, à qui?/Technicien / conseiller agricole",
      cap_vocal_agent_atda="Si Envoyer un message vocal, à qui?/Agent d’ATDA",
      cap_vocal_agent_ddaep="Si Envoyer un message vocal, à qui?/Agent du DDAEP",
      cap_vocal_colleague="Si Envoyer un message vocal, à qui?/Collègue d’une autre organisation paysanne",
      cap_vocal_carrier="Si Envoyer un message vocal, à qui?/Transporteur",
      cap_vocal_friend="Si Envoyer un message vocal, à qui?/Amis",
      cap_vocal_parent="Si Envoyer un message vocal, à qui?/Parents",
      cap_vocal_employee="Si Envoyer un message vocal, à qui?/Gestionnaire de l'exploitation/employé",
      cap_messages="BC-Savez-vous ? Envoyer/Lire un message écrit",
      cap_messages_gardener="Si Envoyer un message écrit, à qui?/Maraîcher",
      cap_messages_supplier="Si Envoyer un message écrit, à qui?/Fournisseur d’intrant",
      cap_messages_collector="Si Envoyer un message écrit, à qui?/Collecteur",
      cap_messages_consumer="Si Envoyer un message écrit, à qui?/Consommateur",
      cap_messages_advisor_agri="Si Envoyer un message écrit, à qui?/Technicien / conseiller agricole",
      cap_messages_agent_atda="Si Envoyer un message écrit, à qui?/Agent d’ATDA",
      cap_messages_agent_ddaep="Si Envoyer un message écrit, à qui?/Agent du DDAEP",
      cap_messages_colleague="Si Envoyer un message écrit, à qui?/Collègue d’une autre organisation paysanne",
      cap_messages_carrier="Si Envoyer un message écrit, à qui?/Transporteur",
      cap_messages_friend="Si Envoyer un message écrit, à qui?/Amis",
      cap_messages_parent="Si Envoyer un message écrit, à qui?/Parents",
      cap_messages_employee="Si Envoyer un message écrit, à qui?/Gestionnaire de l'exploitation/employé",
      cap_photos="BC-Savez-vous ? Envoyer/Prendre une photo",
      cap_photos_gardener="Si Envoyer une photo, à qui?/Maraîcher",
      cap_photos_supplier="Si Envoyer une photo, à qui?/Fournisseur d’intrant",
      cap_photos_collector="Si Envoyer une photo, à qui?/Collecteur",
      cap_photos_consumer="Si Envoyer une photo, à qui?/Consommateur",
      cap_photos_advisor_agri="Si Envoyer une photo, à qui?/Technicien / conseiller agricole",
      cap_photos_agent_atda="Si Envoyer une photo, à qui?/Agent d’ATDA",
      cap_photos_agent_ddaep="Si Envoyer une photo, à qui?/Agent du DDAEP",
      cap_photos_colleague="Si Envoyer une photo, à qui?/Collègue d’une autre organisation paysanne",
      cap_photos_carrier="Si Envoyer une photo, à qui?/Transporteur",
      cap_photos_friend="Si Envoyer une photo, à qui?/Amis",
      cap_photos_parent="Si Envoyer une photo, à qui?/Parents",
      cap_photos_employee="Si Envoyer une photo, à qui?/Gestionnaire de l'exploitation/employé",
      cap_videos="BC-Savez-vous ? Envoyer / Filmer une vidéo",
      cap_videos_gardener="Si Envoyer / Filmer une vidéo, à qui?/Maraîcher",
      cap_videos_supplier="Si Envoyer / Filmer une vidéo, à qui?/Fournisseur d’intrant",
      cap_videos_collector="Si Envoyer / Filmer une vidéo, à qui?/Collecteur",
      cap_videos_consumer="Si Envoyer / Filmer une vidéo, à qui?/Consommateur",
      cap_videos_advisor_agri="Si Envoyer / Filmer une vidéo, à qui?/Technicien / conseiller agricole",
      cap_videos_agent_atda="Si Envoyer / Filmer une vidéo, à qui?/Agent d’ATDA",
      cap_videos_agent_ddaep="Si Envoyer / Filmer une vidéo, à qui?/Agent du DDAEP",
      cap_videos_colleague="Si Envoyer / Filmer une vidéo, à qui?/Collègue d’une autre organisation paysanne",
      cap_videos_carrier="Si Envoyer / Filmer une vidéo, à qui?/Transporteur",
      cap_videos_friend="Si Envoyer / Filmer une vidéo, à qui?/Amis",
      cap_videos_parent="Si Envoyer / Filmer une vidéo, à qui?/Parents",
      cap_videos_employee="Si Envoyer / Filmer une vidéo, à qui?/Gestionnaire de l'exploitation/employé",
      cap_transfer_file="Savez-vous ?  Faire suivre des contenus (messages, audios, photos etc)",
      cap_join_group_link="BC-Savez-vous ? Intégrer des groupes à partir d’un lien / d’une invitation ?",
      cap_group_type_veg_producers="Si Intégrer, créer ou administrer des groupes, de quoi?/Producteurs des légumes",
      cap_group_type_corp_member="Si Intégrer, créer ou administrer des groupes, de quoi?/Membres de coopérative",
      cap_group_type_assistance="Si Intégrer, créer ou administrer des groupes, de quoi?/Groupe d’entraide ou d’échange de connaissance",
      cap_group_type_advisor_agri="Si Intégrer, créer ou administrer des groupes, de quoi?/Conseil de bonnes pratiques agricoles",
      cap_group_type_other="Si Intégrer, créer ou administrer des groupes, de quoi?/Autres",
      cap_info_search_share="BC-Savez-vous ? Chercher, suivre ou diffuser de l’information",
      cap_info_topic_agri_tech="Si chercher, suivre ou diffuser de l’information, sur quoi?/Technique agricole",
      cap_info_topic_crop_protect="Si chercher, suivre ou diffuser de l’information, sur quoi?/Produit phytosanitaire",
      cap_info_topic_price_product="Si chercher, suivre ou diffuser de l’information, sur quoi?/Prix produit",
      cap_info_topic_climate_data="Si chercher, suivre ou diffuser de l’information, sur quoi?/Données climatiques",
      cap_info_topic_market="Si chercher, suivre ou diffuser de l’information, sur quoi?/Accès au marché",
      cap_info_topic_tech="Si chercher, suivre ou diffuser de l’information, sur quoi?/Technique",
      cap_info_topic_finance="Si chercher, suivre ou diffuser de l’information, sur quoi?/Gestion financière",
      cap_info_topic_land="Si chercher, suivre ou diffuser de l’information, sur quoi?/Droit foncier",
      cap_info_topic_other="Si chercher, suivre ou diffuser de l’information, sur quoi?/Autres",
      cap_buy_product_online="BC-Savez-vous ? Acheter des produits",
      cap_buy_product_seed="Si Acheter des produits, quel type de produits?/Semences",
      cap_buy_product_dropping="Si Acheter des produits, quel type de produits?/Fientes de volailles",
      cap_buy_product_fertilizer="Si Acheter des produits, quel type de produits?/Engrais (NPK, Urée)",
      cap_buy_product_compost="Si Acheter des produits, quel type de produits?/Compost",
      cap_buy_product_crop_protect="Si Acheter des produits, quel type de produits?/Produits phytosanitaires",
      cap_buy_product_material_agri="Si Acheter des produits, quel type de produits?/Matériel agricole",
      cap_buy_product_labour="Si Acheter des produits, quel type de produits?/Recrutement de main d’œuvre",
      cap_buy_product_other="Si Acheter des produits, quel type de produits?/Autres",
      cap_recruit_rent_online="BC-Savez-vous ? Recruter de la main d’œuvre / louer du matériel",
      cap_recruit_rent_temporal="Si Recruter de la main d’œuvre / louer du matériel , (quel type de main d'oeuvre et/ou quel type de matériel)/Recrutement temporaire",
      cap_recruit_rent_machine_rental="Si Recruter de la main d’œuvre / louer du matériel , (quel type de main d'oeuvre et/ou quel type de matériel)/Location de machines",
      cap_sell_product_online="BC-Savez-vous ? Vendre des produits",
      cap_install_app="BC-Savez-vous ? Installer des applications",
      cap_write_mail="BC-Savez-vous ? Ecrire un email"

    )

# Save the filtered data
write_rds(activitie_agri_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/activitie_agri_data.rds")
write_rds(languages_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
write_rds(socio_economic_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
write_rds(languages_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
write_rds(org_struct_data , "Desktop/Nicolas Paget/data_paper_Project/filtered_data/org_struct_data .rds")
write_rds(digital_platform_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/digital_platform_data.rds")
write_rds(usage_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_data.rds")
write_rds(crop_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/crop_data.rds")
write_rds(capacities_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/capacities_data.rds")
