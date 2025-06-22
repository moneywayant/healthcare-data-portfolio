/*
  Query Title: Diabetes Status by Age Group

  Purpose:
  Show how diabetes prevalence varies across different age ranges.

  Insight:
  This identifies which age groups are more affected by diabetes.
  Important for resource planning, early intervention, and age-specific health education.

  Note:
  Age codes in this dataset typically follow CDC BRFSS standards:
  1 = 18–24, 2 = 25–29, ..., 13 = 80+

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT
  CASE
    WHEN Diabetes_binary = 1 THEN 'Has Diabetes'
    WHEN Diabetes_binary = 0 THEN 'No Diabetes'
    ELSE 'Unknown'
  END AS Diabetes_Status,

  Age AS Age_Group_Code,
  COUNT(*) AS Patient_Count

FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status, Age_Group_Code
ORDER BY Age_Group_Code, Diabetes_Status;
