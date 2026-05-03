/*
  Query Title: Diabetes Status by Smoking Behavior

  Purpose:
  Compare the distribution of diabetes diagnoses between individuals who smoke and those who don’t.

  Insight:
  Smoking is a known risk factor for many chronic illnesses, including Type 2 diabetes.
  This breakdown can support health promotion strategies focused on smoking cessation.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT
  CASE
    WHEN Diabetes_binary = 1 THEN 'Has Diabetes'
    WHEN Diabetes_binary = 0 THEN 'No Diabetes'
    ELSE 'Unknown'
  END AS Diabetes_Status,

  CASE
    WHEN Smoker = 1 THEN 'Smoker'
    WHEN Smoker = 0 THEN 'Non-Smoker'
    ELSE 'Unknown'
  END AS Smoking_Status,

  COUNT(*) AS Patient_Count

FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status, Smoking_Status
ORDER BY Smoking_Status, Diabetes_Status;
