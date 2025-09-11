/*
  Query Title: Diabetes Status by Gender

  Purpose:
  Show the distribution of diabetes diagnoses across gender categories.
  This helps assess whether gender is a factor in diabetes prevalence within this population.

  Insight:
  Identifying any gender disparity can support more targeted awareness campaigns or treatment initiatives.
  Note: In this dataset, Gender is coded as 0 = Female, 1 = Male.

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
    WHEN Sex = 1 THEN 'Male'
    WHEN Sex = 0 THEN 'Female'
    ELSE 'Unknown'
  END AS Gender,

  COUNT(*) AS Patient_Count

FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status, Gender
ORDER BY Gender, Diabetes_Status;
