/*
  Query Title: Diabetes Status by Physical Activity

  Purpose:
  Compare diabetes rates between those who reported engaging in physical activity and those who did not.

  Insight:
  This helps assess whether there's a noticeable difference in diabetes prevalence between active and inactive individuals.
  Useful for identifying lifestyle factors and health education opportunities.

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
    WHEN PhysActivity = 1 THEN 'Physically Active'
    WHEN PhysActivity = 0 THEN 'Not Active'
    ELSE 'Unknown'
  END AS Activity_Status,

  COUNT(*) AS Patient_Count

FROM `healthcarediabetesanalysis.diabetes_project.brfss_2015`
GROUP BY Diabetes_Status, Activity_Status
ORDER BY Activity_Status, Diabetes_Status;
