-- PIVOT TABLE FOR TOTAL DEATHS PER CAUSE

SELECT 
Country, 
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Meningitis ELSE 0 END) AS "TOTAL_Meningitis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Alzheimer ELSE 0 END) AS "TOTAL_Alzheimer_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Parkinson ELSE 0 END) AS "TOTAL_Parkinson_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Nutritional_deficiencies ELSE 0 END) AS "TOTAL_Nutritional_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Malaria ELSE 0 END) AS "TOTAL_Malaria_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Drowning ELSE 0 END) AS "TOTAL_Drowning_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Interpersonal_violence ELSE 0 END) AS "TOTAL_InterperViolence_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN HIV_AIDS ELSE 0 END) AS "TOTAL_HIV/AIDS_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Drug_use_disorders ELSE 0 END) AS "TOTAL_Druguse_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Tuberculosis ELSE 0 END) AS "TOTAL_Tuberculosis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Cardiovas_diseases ELSE 0 END) AS "TOTAL_Cardiovascular_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Lower_respiratory_infections ELSE 0 END) AS "TOTAL_Lowrespiratory_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Neonatal_disorders ELSE 0 END) AS "TOTAL_Neonatal_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Alcohol_use_disorders ELSE 0 END) AS "TOTAL_Alcoholuse_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Self_harm ELSE 0 END) AS "TOTAL_Selfharm_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Exposure_forces_nature ELSE 0 END) AS "TOTAL_forcesofnature_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Diarrheal_diseases ELSE 0 END) AS "TOTAL_Diarrheal_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Envirheat_cold ELSE 0 END) AS "TOTAL_Enviorment_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Neoplasms ELSE 0 END) AS "TOTAL_Neoplasms_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Conflict_terrorism ELSE 0 END) AS "TOTAL_Conflict_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Diabetes_mellitus ELSE 0 END) AS "TOTAL_Diabetes_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Chronic_kidney_disease ELSE 0 END) AS "TOTAL_ChronicKidney_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Poisonings ELSE 0 END) AS "TOTAL_Poisoning_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN malnutrition ELSE 0 END) AS "TOTAL_Malnutrition_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Road_injuries ELSE 0 END) AS "TOTAL_RoadInjuries_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Chronic_respiratory ELSE 0 END) AS "TOTAL_ChronicRespiratory_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Cirrhosis_chronic_liver_diseases ELSE 0 END) AS "TOTAL_Cirrhosis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Digestive_diseases ELSE 0 END) AS "TOTAL_Digestive_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Acute_hepatitis ELSE 0 END) AS "TOTAL_Hepatitis_Deaths"
FROM latam_countries
GROUP BY Country
ORDER BY Country ASC;

-- CREATING VIEW

DROP VIEW IF EXISTS Total_Deaths;
CREATE VIEW Total_Deaths AS
SELECT 
Country, 
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Meningitis ELSE 0 END) AS "TOTAL_Meningitis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Alzheimer ELSE 0 END) AS "TOTAL_Alzheimer_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Parkinson ELSE 0 END) AS "TOTAL_Parkinson_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Nutritional_deficiencies ELSE 0 END) AS "TOTAL_Nutritional_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Malaria ELSE 0 END) AS "TOTAL_Malaria_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Drowning ELSE 0 END) AS "TOTAL_Drowning_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Interpersonal_violence ELSE 0 END) AS "TOTAL_InterperViolence_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN HIV_AIDS ELSE 0 END) AS "TOTAL_HIV/AIDS_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Drug_use_disorders ELSE 0 END) AS "TOTAL_Druguse_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Tuberculosis ELSE 0 END) AS "TOTAL_Tuberculosis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Cardiovas_diseases ELSE 0 END) AS "TOTAL_Cardiovascular_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Lower_respiratory_infections ELSE 0 END) AS "TOTAL_Lowrespiratory_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Neonatal_disorders ELSE 0 END) AS "TOTAL_Neonatal_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Alcohol_use_disorders ELSE 0 END) AS "TOTAL_Alcoholuse_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Self_harm ELSE 0 END) AS "TOTAL_Selfharm_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Exposure_forces_nature ELSE 0 END) AS "TOTAL_forcesofnature_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Diarrheal_diseases ELSE 0 END) AS "TOTAL_Diarrheal_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Envirheat_cold ELSE 0 END) AS "TOTAL_Enviorment_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Neoplasms ELSE 0 END) AS "TOTAL_Neoplasms_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Conflict_terrorism ELSE 0 END) AS "TOTAL_Conflict_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Diabetes_mellitus ELSE 0 END) AS "TOTAL_Diabetes_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Chronic_kidney_disease ELSE 0 END) AS "TOTAL_ChronicKidney_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Poisonings ELSE 0 END) AS "TOTAL_Poisoning_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN malnutrition ELSE 0 END) AS "TOTAL_Malnutrition_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Road_injuries ELSE 0 END) AS "TOTAL_RoadInjuries_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Chronic_respiratory ELSE 0 END) AS "TOTAL_ChronicRespiratory_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Cirrhosis_chronic_liver_diseases ELSE 0 END) AS "TOTAL_Cirrhosis_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Digestive_diseases ELSE 0 END) AS "TOTAL_Digestive_Deaths",
SUM(CASE WHEN Year BETWEEN "1990" AND "2019" THEN Acute_hepatitis ELSE 0 END) AS "TOTAL_Hepatitis_Deaths"
FROM latam_countries
GROUP BY Country
ORDER BY Country ASC;


-- INDIVIDUAL TABLE FOR TOTAL DEATH

SELECT Country, SUM(Meningitis) as TOTAL_MENINGITIS_DEATHS
FROM latam_countries
WHERE Year BETWEEN "1990" AND "2019"
and left(Country,1) between 'A' and 'Z'
GROUP BY Country
ORDER BY TOTAL_MENINGITIS_DEATHS DESC;


-- Code for Meningitis

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Meningitis` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- ALZHEIMER

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Alzheimer` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- PARKINSON

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Parkinson` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Nutritional_deficiencies

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Nutritional_deficiencies` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Malaria

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Malaria` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Drowning

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Drowning` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Interpersonal Violence

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Interpersonal_violence` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- HIV/AIDS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `HIV_AIDS` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Drug Use

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Drug_use_disorders` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- Tuberculosis

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Tuberculosis` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- CARDIOVASCULAR DISEASES

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Cardiovas_diseases` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- LOWER RESPIRATORY INFECTIONS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Lower_respiratory_infections` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- NEONATAL DISORDERS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Neonatal_disorders` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- ALCOHOL USE

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Alcohol_use_disorders` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- SELF HARM

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Self_harm` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- EXPOSURE TO FORCES OF NATURE

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Exposure_forces_nature` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- DIARRHEAL DISEASES

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Diarrheal_diseases` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- ENVIROMENTAL EXPOSURE TO HEAT AND COLD

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Envirheat_cold` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- NEOPLASMS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Neoplasms` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- CONFLICT AND TERRORISM

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Conflict_terrorism` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- DIABETES MELLITUS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Diabetes_mellitus` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- CHRONIC KIDNEY DISEASE 

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Chronic_kidney_disease` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- POISONINGS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Poisonings` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- MALNUTRITION

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `malnutrition` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- ROAD INJURIES

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Road_injuries` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- CHRONIC RESPIRATORY DISEASE

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Chronic_respiratory` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- CIRRHOSIS AND OTHER CHRONIC LIVER DISEASES

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Cirrhosis_chronic_liver_diseases` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- DIGESTIVE DISEASES

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Digestive_diseases` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

-- ACUTE HEPATITIS

SET SESSION group_concat_max_len = 200000;
SET @sql = (SELECT GROUP_CONCAT(distinct concat( "MAX(CASE WHEN Year = '", Year, "' THEN `Acute_hepatitis` ELSE 0 END) AS '", Year, "'" )
	)
 FROM latam_countries WHERE Year BETWEEN "2000" and "2019");

SET @pivot_statement = CONCAT("SELECT Country,", @sql," FROM latam_countries GROUP BY Country ORDER BY country ASC");

PREPARE complete_pivot_statement FROM @pivot_statement;

EXECUTE complete_pivot_statement;

