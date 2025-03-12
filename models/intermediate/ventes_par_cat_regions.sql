SELECT *
,CASE
  WHEN cat_vin = "BORDELAIS" THEN "NOUVELLE-AQUITAINE"
  WHEN cat_vin = "VALLEE DU RHONE" THEN "AUVERGNE-RHONE-ALPES"
  WHEN cat_vin = "VALLEE DE LA LOIRE" THEN "CENTRE-VAL DE LOIRE"
  WHEN cat_vin = "LANGUEDOC ROUSSILLON" THEN "OCCITANIE"
  WHEN cat_vin = "SUD OUEST" THEN "NOUVELLE-AQUITAINE"
  WHEN cat_vin = "PROVENCE CORSE" THEN "PROVENCE-ALPES-CÔTE D'AZUR"
  WHEN cat_vin = "ALSACE" THEN "GRAND EST"
  WHEN cat_vin = "BOURGOGNE" THEN "BOURGOGNE-FRANCHE-COMTE"
  WHEN cat_vin = "AUTRES REGIONS" THEN "AUTRES REGIONS"
  WHEN cat_vin = "BEAUJOLAIS" THEN "AUVERGNE-RHONE-ALPES"
END AS regions
FROM {{ ref('stg_So_Wine_Project__ventes_par_categorie') }}