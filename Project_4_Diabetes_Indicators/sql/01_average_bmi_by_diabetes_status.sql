/*
  Query Title: Average BMI by Diabetes Status

  Purpose:
  Calculate the average Body Mass Index (BMI) for individuals with and without diabetes.
  This allows us to compare body composition between the two groups.

  Insight:
  A higher average BMI in the diabetic population may suggest a strong correlation between excess weight and diabetes risk.
  This insight is valuable for targeting public health interventions.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT
  CASE
    WHEN Diabetes_binary = 1 THEN 'Has Diabetes'
    WHEN Diabetes_binary = 0 THEN 'No Diabetes'
    ELSE 'Unknown'
  END AS Diabetes_Status,

  ROUND(AVG(BMI), 1) AS Average_BMI

FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status
ORDER BY Average_BMI DESC;
