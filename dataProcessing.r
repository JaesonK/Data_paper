

library(tidyverse) # For data manipulation (dplyr, readr, ggplot2, etc.)
library(janitor)   # For cleaning column names
library(dplyr)     # For quick summary statistics
library(readxl)

data <- read_excel("Desktop/Nicolas Paget/data_paper_Project/2023-10-26-BASE-FINALE-Benin.xlsx")
View(data)

socio_economic_data <- data %>%
    select(
      id = "_id",
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
      id = "_id",
      main_activity_time="Quelle est votre activité principale en terme de temps alloué",	
      main_activity_income="Quelle est votre activité principale en terme de revenu",	
      agri_activity_market_gardening="Quelles sont vos principales activités agricoles ?/Culture maraîchère",	
      agri_activity_food_crops="Quelles sont vos principales activités agricoles ?/Culture vivrière",	
      agri_activity_cash_crops="Quelles sont vos principales activités agricoles ?/Cultures de rente",	
      agri_activity_livestock="Quelles sont vos principales activités agricoles ?/Elevage",	
      agri_activity_fishing="Quelles sont vos principales activités agricoles ?/Pêche",	
      agri_activity_agri_trade="Quelles sont vos principales activités agricoles ?/Commerce de produit agricole",	
      agri_activity_agri_processing="Quelles sont vos principales activités agricoles ?/Transformation de produits agricoles",	
      agri_activity_hydro_amenagement="Quelles sont vos principales activités agricoles ?/Aménagement hydroagricole",	
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
      id = "_id",
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
      id = "_id",
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
      id = "_id",
      platform_family="ZK-Etes-vous intégrés dans des plateformes numériques  familiale ?",
      #plaform_friend="ZK-Etes-vous intégrés dans des plateformes numériques  amicale ?",
      platform_1_integrated="NN-1",	
      platform_2_integrated="NN-2",	
      platform_3_integrated="NN-3",	
      platform_4_integrated="NN-4",	
      platform_5_integrated="NN-5",	
      platform_6_integrated="NN-6",	
      platform_7_integrated="NN-7",	
      platform_8_integrated="NN-8",	
      platform_9_integrated="NN-9",	
      platform_10_integrated="NN-10",	
      platform_total="NN-NBRE-PLATEFORME",	
      platform_others="Etes-vous intégrés dans plus de 10  plateformes numérique avec lesquels vous travaillez avec d’autres ?",
    )

      
      # Crop Names
crop_data <- data %>%
    select(
      id = "_id",
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
      crop_other="nom de la culture/Autre"
    )


      # Phone Usage

usage_data <- data %>%
    select(
      id = "_id",
      usage__google="Quelles sont les applications que vous utilisez avec votre téléphone ?/Google",
      usage__whatsapp="Quelles sont les applications que vous utilisez avec votre téléphone ?/Whatsapp",
      usage__facebook="Quelles sont les applications que vous utilisez avec votre téléphone ?/Facebook/Messenger",
      usage__youtube="Quelles sont les applications que vous utilisez avec votre téléphone ?/YouTube",
      usage__linkedin="Quelles sont les applications que vous utilisez avec votre téléphone ?/LinkedIn",
      usage__instagramm="Quelles sont les applications que vous utilisez avec votre téléphone ?/Instagram",
      usage__tktok="Quelles sont les applications que vous utilisez avec votre téléphone ?/TikTok",
      usage__snap="Quelles sont les applications que vous utilisez avec votre téléphone ?/Snapchat",
      usage__other_no_agri="Quelles sont les applications que vous utilisez avec votre téléphone ?/Autres applications non agricoles",
      usage__other_agri="Quelles sont les applications que vous utilisez avec votre téléphone ?/Autres applications agricoles",
      usage_call_sms_gardener="Si Passer des appels, envoyer des SMS, à qui?/Maraîcher",
      usage_call_sms_supplier="Si Passer des appels, envoyer des SMS, à qui?/Fournisseur d’intrant",
      usage_call_sms_collector="Si Passer des appels, envoyer des SMS, à qui?/Collecteur",
      usage_call_sms_consumer="Si Passer des appels, envoyer des SMS, à qui?/Consommateur",
      usage_call_sms_advisor_agri="Si Passer des appels, envoyer des SMS, à qui?/Technicien / conseiller agricole",
      usage_call_sms_agent_atda="Si Passer des appels, envoyer des SMS, à qui?/Agent d’ATDA",
      usage_call_sms_agent_ddaep="Si Passer des appels, envoyer des SMS, à qui?/Agent du DDAEP",
      usage_call_sms_colleague="Si Passer des appels, envoyer des SMS, à qui?/Collègue d’une autre organisation paysanne",
      usage_call_sms_carrier="Si Passer des appels, envoyer des SMS, à qui?/Transporteur",
      usage_call_sms_friend="Si Passer des appels, envoyer des SMS, à qui?/Amis",
      usage_call_sms_parent="Si Passer des appels, envoyer des SMS, à qui?/Parents",
      usage_call_sms_employee="Si Passer des appels, envoyer des SMS, à qui?/Gestionnaire de l'exploitation/employé",
      usage_vocal_gardener="Si Envoyer un message vocal, à qui?/Maraîcher",
      usage_vocal_supplier="Si Envoyer un message vocal, à qui?/Fournisseur d’intrant",
      usage_vocal_collector="Si Envoyer un message vocal, à qui?/Collecteur",
      usage_vocal_consumer="Si Envoyer un message vocal, à qui?/Consommateur",
      usage_vocal_advisor_agri="Si Envoyer un message vocal, à qui?/Technicien / conseiller agricole",
      usage_vocal_agent_atda="Si Envoyer un message vocal, à qui?/Agent d’ATDA",
      usage_vocal_agent_ddaep="Si Envoyer un message vocal, à qui?/Agent du DDAEP",
      usage_vocal_colleague="Si Envoyer un message vocal, à qui?/Collègue d’une autre organisation paysanne",
      usage_vocal_carrier="Si Envoyer un message vocal, à qui?/Transporteur",
      usage_vocal_friend="Si Envoyer un message vocal, à qui?/Amis",
      usage_vocal_parent="Si Envoyer un message vocal, à qui?/Parents",
      usage_vocal_employee="Si Envoyer un message vocal, à qui?/Gestionnaire de l'exploitation/employé",
      usage_messages_gardener="Si Envoyer un message écrit, à qui?/Maraîcher",
      usage_messages_supplier="Si Envoyer un message écrit, à qui?/Fournisseur d’intrant",
      usage_messages_collector="Si Envoyer un message écrit, à qui?/Collecteur",
      usage_messages_consumer="Si Envoyer un message écrit, à qui?/Consommateur",
      usage_messages_advisor_agri="Si Envoyer un message écrit, à qui?/Technicien / conseiller agricole",
      usage_messages_agent_atda="Si Envoyer un message écrit, à qui?/Agent d’ATDA",
      usage_messages_agent_ddaep="Si Envoyer un message écrit, à qui?/Agent du DDAEP",
      usage_messages_colleague="Si Envoyer un message écrit, à qui?/Collègue d’une autre organisation paysanne",
      usage_messages_carrier="Si Envoyer un message écrit, à qui?/Transporteur",
      usage_messages_friend="Si Envoyer un message écrit, à qui?/Amis",
      usage_messages_parent="Si Envoyer un message écrit, à qui?/Parents",
      usage_messages_employee="Si Envoyer un message écrit, à qui?/Gestionnaire de l'exploitation/employé",
      usage_photos_gardener="Si Envoyer une photo, à qui?/Maraîcher",
      usage_photos_supplier="Si Envoyer une photo, à qui?/Fournisseur d’intrant",
      usage_photos_collector="Si Envoyer une photo, à qui?/Collecteur",
      usage_photos_consumer="Si Envoyer une photo, à qui?/Consommateur",
      usage_photos_advisor_agri="Si Envoyer une photo, à qui?/Technicien / conseiller agricole",
      usage_photos_agent_atda="Si Envoyer une photo, à qui?/Agent d’ATDA",
      usage_photos_agent_ddaep="Si Envoyer une photo, à qui?/Agent du DDAEP",
      usage_photos_colleague="Si Envoyer une photo, à qui?/Collègue d’une autre organisation paysanne",
      usage_photos_carrier="Si Envoyer une photo, à qui?/Transporteur",
      usage_photos_friend="Si Envoyer une photo, à qui?/Amis",
      usage_photos_parent="Si Envoyer une photo, à qui?/Parents",
      usage_videos_gardener="Si Envoyer / Filmer une vidéo, à qui?/Maraîcher",
      usage_videos_supplier="Si Envoyer / Filmer une vidéo, à qui?/Fournisseur d’intrant",
      usage_videos_collector="Si Envoyer / Filmer une vidéo, à qui?/Collecteur",
      usage_videos_consumer="Si Envoyer / Filmer une vidéo, à qui?/Consommateur",
      usage_videos_advisor_agri="Si Envoyer / Filmer une vidéo, à qui?/Technicien / conseiller agricole",
      usage_videos_agent_atda="Si Envoyer / Filmer une vidéo, à qui?/Agent d’ATDA",
      usage_videos_agent_ddaep="Si Envoyer / Filmer une vidéo, à qui?/Agent du DDAEP",
      usage_videos_colleague="Si Envoyer / Filmer une vidéo, à qui?/Collègue d’une autre organisation paysanne",
      usage_videos_carrier="Si Envoyer / Filmer une vidéo, à qui?/Transporteur",
      usage_videos_friend="Si Envoyer / Filmer une vidéo, à qui?/Amis",
      usage_videos_parent="Si Envoyer / Filmer une vidéo, à qui?/Parents",
      usage_videos_employee="Si Envoyer / Filmer une vidéo, à qui?/Gestionnaire de l'exploitation/employé",
      usage_group_type_veg_producers="Si Intégrer, créer ou administrer des groupes, de quoi?/Producteurs des légumes",
      usage_group_type_corp_member="Si Intégrer, créer ou administrer des groupes, de quoi?/Membres de coopérative",
      usage_group_type_assistance="Si Intégrer, créer ou administrer des groupes, de quoi?/Groupe d’entraide ou d’échange de connaissance",
      usage_group_type_advisor_agri="Si Intégrer, créer ou administrer des groupes, de quoi?/Conseil de bonnes pratiques agricoles",
      usage_group_type_other="Si Intégrer, créer ou administrer des groupes, de quoi?/Autres",
      usage_info_topic_agri_tech="Si chercher, suivre ou diffuser de l’information, sur quoi?/Technique agricole",
      usage_info_topic_crop_protect="Si chercher, suivre ou diffuser de l’information, sur quoi?/Produit phytosanitaire",
      usage_info_topic_price_product="Si chercher, suivre ou diffuser de l’information, sur quoi?/Prix produit",
      usage_info_topic_climate_data="Si chercher, suivre ou diffuser de l’information, sur quoi?/Données climatiques",
      usage_info_topic_market="Si chercher, suivre ou diffuser de l’information, sur quoi?/Accès au marché",
      usage_info_topic_tech="Si chercher, suivre ou diffuser de l’information, sur quoi?/Technique",
      usage_info_topic_finance="Si chercher, suivre ou diffuser de l’information, sur quoi?/Gestion financière",
      usage_info_topic_land="Si chercher, suivre ou diffuser de l’information, sur quoi?/Droit foncier",
      usage_info_topic_other="Si chercher, suivre ou diffuser de l’information, sur quoi?/Autres",
      usage_buy_product_seed="Si Acheter des produits, quel type de produits?/Semences",
      usage_buy_product_dropping="Si Acheter des produits, quel type de produits?/Fientes de volailles",
      usage_buy_product_fertilizer="Si Acheter des produits, quel type de produits?/Engrais (NPK, Urée)",
      usage_buy_product_compost="Si Acheter des produits, quel type de produits?/Compost",
      usage_buy_product_crop_protect="Si Acheter des produits, quel type de produits?/Produits phytosanitaires",
      usage_buy_product_material_agri="Si Acheter des produits, quel type de produits?/Matériel agricole",
      usage_buy_product_labour="Si Acheter des produits, quel type de produits?/Recrutement de main d’œuvre",
      usage_buy_product_other="Si Acheter des produits, quel type de produits?/Autres",
      usage_recruit_rent_temporal="Si Recruter de la main d’œuvre / louer du matériel , (quel type de main d'oeuvre et/ou quel type de matériel)/Recrutement temporaire",
      usage_recruit_rent_machine_rental="Si Recruter de la main d’œuvre / louer du matériel , (quel type de main d'oeuvre et/ou quel type de matériel)/Location de machines",
      usage_phone_comm_network="ZO-Utilisez-vous le téléphone pour communiquer avec votre réseau (famille, amis, relations marchandes…etc.) ?",
      usage_phone_momo="ZO-Utilisez-vous le téléphone pour faire les opérations momo?",
      usage_momo_pay="Si oui, usage momo/Payer",
      usage_momo_receive="Si oui, usage momo/Recevoir",
      usage_momo_save="Si oui, usage momo/Epargner",
      usage_momo_tontine="Si oui, usage momo/Participer à des tontines",
      usage_momo_secur="Si oui, usage momo/Sécuriser les payements",
      usage_momo_credit="Si oui, usage momo/Recevoir un crédit de microfinance",
      usage_momo_refund="Si oui, usage momo/Rembourser un emprunt",
      usage_phone_market="ZO-Utilisez-vous le téléphone pour accéder aux marchés ?",
      usage_market_status="Si oui, usage marché/Placer vos produits (annoncer via des statuts l’existence de produits en vente ?),",
      usage_market_advert="Si oui, usage marché/Faire la publicité de vos produits",
      usage_market_price="Si oui, usage marché/Connaître les prix sur les différents marchés",
      usage_market_nego_prod="Si oui, usage marché/Négocier la vente de vos produits",
      usage_market_loc="Si oui, usage marché/Localiser des intrants (semences, produits)",
      usage_market_col="Si oui, usage marché/Collecter les prix des intrants chez les différents fournisseurs",
      usage_market_nego_input="Si oui, usage marché/Négocier les prix des intrants",
      usage_market_hiring="Si oui, usage marché/Rechercher de la main d’œuvre",
      usage_market_material_agri="Si oui, usage marché/Réserver et louer des outils agricoles",
      usage_phone_knowledge="ZO-Utilisez-vous le téléphone pour acquérir et échanger des connaissances ?",
      usage_knowledge_agri_quest="Si oui, usage/Poser des questions sur des problématiques agricoles à votre famille ou des amis",
      usage_knowledge_whatsapp_quest="Si oui, usage/Poser des questions dans des groupes WhatsApp",
      usage_knowledge_agri_video="LJ-Si oui, usage/Regarder des vidéos sur les pratiques agricoles",
      usage_knowledge_search_read="LJ-Si oui, usage/Rechercher et lire",
      usage_knowledge_acces_social_media="Si oui, comment accédez-vous à ces connaissances ? via/Utilisation des réseaux sociaux (WhatsApp, Messenger, Facebook, Tiktok, Instagram)",
      usage_knowledge_acces_specific_platform="Si oui, comment accédez-vous à ces connaissances ? via/Utilisation des plateformes spécifiques (lesquelles ?)",
      usage_knowledge_acces_youtube_search="Si oui, comment accédez-vous à ces connaissances ? via/Recherche sur Youtube",
      usage_knowledge_acces_internet_search="Si oui, comment accédez-vous à ces connaissances ? via/Recherche sur Internet",
      usage_knowledge_acces_sd_card="Si oui, comment accédez-vous à ces connaissances ? via/Achat des cartes SD préremplies",
      usage_knowledge_acces_bluetooth="Si oui, comment accédez-vous à ces connaissances ? via/Transfert des fichiers via Bluetooth",
      usage_internet="A2-Utilisez-vous internet (l’enquêté) ?"
    )
      
   # Access
access_data <- data %>%
    select(
      id = "_id",
      access_android="ANDROID",
      access_phone_type="Type terminal",
      access_no_digital="Aucun",
      access_phone="Téléphone portable",
      access_tablet="Tablette",
      access_laptop="Ordinateur",
      access_spotlight="Projecteur",
      access_drone="Drone",
      access_first_year_phone="Si téléphone portable, en quelle année avez-vous acquis ou eu votre premier téléphone ?",
      access_first_phone_cost="Si téléphone portable, combien avait-il coûté ?",
      access_current_phone_year="Quand avez-vous acheté ou eu le téléphone que vous possédez actuellement ? (Année)",
      access_current_phone_cost="Combien avait-il couté?",
      access_simple_phone_cost="BB-Cout-telephone-simple",
      access_num_phone_purchased="Pouvez-vous nous dire combien de téléphones vous avez achetés ?",
      access_electricity_source="FF- Quelle est la voie d‘accès à l’électricité du ménage",
      access_neighbor_phone_charge="Si aucun, vous arrive-t-il de faire recharger votre téléphone dans une autre localité ?",
      access_neighbor_distance="Si aucun, à quelle distance se situe la localité la plus proche dotée en énergie ?  en km",
      access_electricity_production="FF- Quel est le mode de production de l’électricité ?",
      access_network_mtn="Quel réseau téléphonique fonctionne dans la localité ?/MTN",
      access_network_moov="Quel réseau téléphonique fonctionne dans la localité ?/Moov",
      access_network_sbin="Quel réseau téléphonique fonctionne dans la localité ?/SBIN",
      access_network_isocel="Quel réseau téléphonique fonctionne dans la localité ?/Isocel",
      access_network_none_beninese="Quel réseau téléphonique fonctionne dans la localité ?/Aucun réseau Béninois",
      access_network_none="Quel réseau téléphonique fonctionne dans la localité ?/Aucun",
      access_quality_mtn="Si MTN, sur une échelle de 1 à 5 comment évaluez-vous l’intensité de la couverture du réseau MTN (Très bon réseau = 5, Bon réseau = 4, Réseau moyen = 3, Réseau faible = 2, Réseau très faible = 1)",
      access_perception_mtn="Perception-MTN",
      access_perception_moov="Perception-MOOV",
      access_quality_moov="Si Moov, sur une échelle de 1 à 3 comment évaluez-vous l’intensité de la couverture du réseau Moov (Très bon réseau = 5, Bon réseau = 4, Réseau moyen = 3, Réseau faible = 2, Réseau très faible = 1)",
      access_internet="1-Avez-vous accès à internet (au village) ?",
      access_internet_debit="Si oui, quelle technologie d’accès",
      access_internet_quality="Evaluation-Qualite-Internet",
      access_internet_home="Si oui, où pouvez-vous vous connecter à internet ?/Chez moi",
      access_internet_elsewhere="Si oui, où pouvez-vous vous connecter à internet ?/Ailleurs au village",
      access_internet_field="Si oui, où pouvez-vous vous connecter à internet ?/Au champ",
      access_internet_market="Si oui, où pouvez-vous vous connecter à internet ?/Au marché",
      access_internet_city="Si oui, où pouvez-vous vous connecter à internet ?/J’attends d’arriver en ville",
      access_internet_where_possible="Si oui, où pouvez-vous vous connecter à internet ?/Je me rends régulièrement dans une localité d’où il est possible de se connecter",
      access_internet_other="Si oui, où pouvez-vous vous connecter à internet ?/Autres",
      access_recharge_internet_credit="Comment rechargez-vous votre internet ?/Crédit",
      access_recharge_internet_package="Comment rechargez-vous votre internet ?/Forfait",
      access_recharge_internet_other="Comment rechargez-vous votre internet ?/Autre (préciser)",
      access_recharge_internet_freq="A quelle fréquence vous rechargez-vous en (data) internet ?",
      access_recharge_internet_budget="BE-Quel est votre budget estimatif hebdomadaire de recharge internet ?",
      access_recharge_com_credit="Comment rechargez-vous votre téléphone pour communiquer ?/Crédit",
      access_recharge_com_package="Comment rechargez-vous votre téléphone pour communiquer ?/Forfait",
      access_recharge_com_other="Comment rechargez-vous votre téléphone pour communiquer ?/Autre (préciser)",
      access_recharge_com_freq="A quelle fréquence vous rechargez-vous en crédit de communication ?",
      access_recharge_com_budget="BE-Quel est votre budget estimatif hebdomadaire de crédit de communication ?",
      access_recharge_service="Avez-vous accès aux services de recharge de crédit ou forfait de communication dans votre village ou localité ?",
      access_recharge_service_momo="Si oui, lesquels/par Momo",
      access_recharge_service_point="Si oui, lesquels/dans un point de recharge",
      access_recharge_service_market="Si oui, lesquels/dans un commerce",
      access_recharge_service_other="Si oui, lesquels/Autre (à préciser)",
      access_no_recharche_service_distance="Si non, à quelle distance se situe le village le plus proche où vous trouvez ces services ?  __km",
      access_momo="BR-Avez-vous accès au service Momo dans votre village ou localité ?",
      access_recharge_momo_point="Si oui, où rechargez-vous votre compte Momo ?/dans un point de recharge",
      access_recharge_momo_market="Si oui, où rechargez-vous votre compte Momo ?/dans un commerce",
      access_recharge_momo_other="Si oui, où rechargez-vous votre compte Momo ?/Autre (à préciser)",
      access_no_recharge_momo_distance="Si non, à quelle distance se situe le village le plus proche où vous trouvez ce service ?"
      
    )

      # Capacities
capacities_data <- data %>%
    select(
      id = "_id",
      cap_call_sms="BC-capacite-Passer des appels, envoyer des SMS",
      cap_vocal="BC-Savez-vous ?  Envoyer/Ecouter un message vocal",
      cap_messages="BC-Savez-vous ? Envoyer/Lire un message écrit",
      cap_photos="BC-Savez-vous ? Envoyer/Prendre une photo",
      cap_photos_employee="Si Envoyer une photo, à qui?/Gestionnaire de l'exploitation/employé",
      cap_videos="BC-Savez-vous ? Envoyer / Filmer une vidéo",
      cap_transfer_file="Savez-vous ?  Faire suivre des contenus (messages, audios, photos etc)",
      cap_join_group_link="BC-Savez-vous ? Intégrer des groupes à partir d’un lien / d’une invitation ?",
      cap_info_search_share="BC-Savez-vous ? Chercher, suivre ou diffuser de l’information",
      cap_buy_product_online="BC-Savez-vous ? Acheter des produits",
      cap_recruit_rent_online="BC-Savez-vous ? Recruter de la main d’œuvre / louer du matériel",
      cap_sell_product_online="BC-Savez-vous ? Vendre des produits",
      cap_install_app="BC-Savez-vous ? Installer des applications",
      cap_write_mail="BC-Savez-vous ? Ecrire un email"

    )

# Save the filtered data
write_rds(activitie_agri_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/activitie_agri_data.rds")
write_rds(access_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/access_data.rds")
write_rds(languages_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/languages_data.rds")
write_rds(socio_economic_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/socio_economic_data.rds")
write_rds(org_struct_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/org_struct_data.rds")
write_rds(digital_platform_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/digital_platform_data.rds")
write_rds(usage_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/usage_data.rds")
write_rds(crop_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/crop_data.rds")
write_rds(capacities_data, "Desktop/Nicolas Paget/data_paper_Project/filtered_data/capacities_data.rds")
