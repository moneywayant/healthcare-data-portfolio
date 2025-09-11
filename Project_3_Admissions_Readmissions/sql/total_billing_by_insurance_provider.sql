/*
  Query Title: Total Billing by Insurance Provider

  Purpose:
  Calculate the total billing amount submitted by each insurance provider. Filters out null or invalid amounts to ensure accurate financial aggregation.

  Insight:
  Helps identify which insurance companies account for the largest share of billing volume.
  This is useful for financial planning, payer contract negotiation, and evaluating revenue sources.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT 
  `Insurance Provider`,
  ROUND(SUM(CAST(`Billing Amount` AS FLOAT64)), 2) AS Total_Billing
FROM 
  healthcare_data.patients
WHERE 
  `Insurance Provider` IS NOT NULL
  AND SAFE_CAST(`Billing Amount` AS FLOAT64) IS NOT NULL
GROUP BY 
  `Insurance Provider`
ORDER BY 
  Total_Billing DESC;
