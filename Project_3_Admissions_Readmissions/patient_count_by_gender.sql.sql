/*
  Query Title: Patient Count by Gender

  Purpose:
  Determine the number of patients grouped by gender. This helps analyze gender distribution within the dataset.

  Insight:
  Useful for demographic reporting, identifying patient population segments, and tailoring healthcare strategies based on gender trends.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT 
  Gender,
  COUNT(*) AS Patient_Count
FROM 
  healthcare_data.patients
WHERE 
  Gender IS NOT NULL
GROUP BY 
  Gender;
