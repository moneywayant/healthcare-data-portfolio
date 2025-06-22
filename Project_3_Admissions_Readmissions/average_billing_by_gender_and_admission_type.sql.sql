/*
  Query Title: Average Billing by Gender and Admission Type

  Purpose:
  Calculate the average billing amount across combinations of gender and admission type (e.g., Emergency, Elective, Routine).

  Insight:
  Helps uncover whether certain patient groups or admission types are associated with higher healthcare costs.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT 
  Gender,
  `Admission Type`,
  ROUND(AVG(CAST(`Billing Amount` AS FLOAT64)), 2) AS Avg_Billing
FROM 
  healthcare_data.patients
WHERE 
  Gender IS NOT NULL
  AND `Admission Type` IS NOT NULL
  AND SAFE_CAST(`Billing Amount` AS FLOAT64) IS NOT NULL
GROUP BY 
  Gender, `Admission Type`
ORDER BY 
  Avg_Billing DESC;
