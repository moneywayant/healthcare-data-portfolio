/*
  Query Title: Most Common Medical Conditions

  Purpose:
  Count the number of patient records associated with each medical condition to identify high-frequency diagnoses.

  Insight:
  Highlights the most prevalent conditions in the dataset, which is valuable for resource planning, staffing, or condition-specific outreach.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT 
  `Medical Condition`,
  COUNT(*) AS Case_Count
FROM 
  healthcare_data.patients
WHERE 
  `Medical Condition` IS NOT NULL
GROUP BY 
  `Medical Condition`
ORDER BY 
  Case_Count DESC;
