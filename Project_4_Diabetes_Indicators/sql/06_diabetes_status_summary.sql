/*
  Query Title: Diabetes Status Summary

  Purpose:
  Categorize the population by diabetes status (Has Diabetes vs No Diabetes).
  Provides a quick count of each category to understand the overall prevalence in the dataset.

  Insight:
  This query gives a clear snapshot of how common diabetes is in the dataset.
  Useful as a KPI in dashboards or to compare trends with other health indicators.

  Tools: BigQuery SQL
  Author: Anthony Cid
*/

SELECT
  CASE
    WHEN Diabetes_binary = 1 THEN 'Has Diabetes'
    WHEN Diabetes_binary = 0 THEN 'No Diabetes'
    ELSE 'Unknown'
  END AS Diabetes_Status,
  COUNT(*) AS Patient_Count
FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status
ORDER BY Patient_Count DESC;
