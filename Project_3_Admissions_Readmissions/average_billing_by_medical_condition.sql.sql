/*
  Query Title: Average Billing by Medical Condition

  Purpose:
  Analyze the average billing amount associated with each medical condition.
  Filters out null or invalid data using SAFE_CAST for accurate results.

  Insight:
  Reveals the most expensive medical conditions based on billing.
  Useful for identifying financial burden areas and cost-saving opportunities.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT 
  `Medical Condition`,
  ROUND(AVG(CAST(`Billing Amount` AS FLOAT64)), 2) AS Avg_Billing
FROM 
  healthcare_data.patients
WHERE 
  `Medical Condition` IS NOT NULL
  AND SAFE_CAST(`Billing Amount` AS FLOAT64) IS NOT NULL
GROUP BY 
  `Medical Condition`
ORDER BY 
  Avg_Billing DESC;
