# Data Dictionary - Diabetes Indicators & Physical Activity

## Source Note

`clean_diabetes_dataset_brfss2015.csv` is a cleaned BRFSS 2015 diabetes indicator dataset used for portfolio analysis. BRFSS is a public CDC survey dataset; CDC's 2015 survey documentation is available here: https://www.cdc.gov/brfss/annual_data/annual_2015.html

## Grain

One row represents one survey respondent record in the cleaned analysis dataset.

## Fields

| Field | Description |
| --- | --- |
| Diabetes_binary | Diabetes status indicator; 1 means diabetes, 0 means no diabetes. |
| HighBP | High blood pressure indicator. |
| HighChol | High cholesterol indicator. |
| CholCheck | Cholesterol check indicator. |
| BMI | Body mass index. |
| Smoker | Smoking history indicator. |
| Stroke | Stroke history indicator. |
| HeartDiseaseorAttack | Heart disease or heart attack history indicator. |
| PhysActivity | Physical activity indicator. |
| Fruits | Fruit consumption indicator. |
| Veggies | Vegetable consumption indicator. |
| HvyAlcoholConsump | Heavy alcohol consumption indicator. |
| AnyHealthcare | Healthcare coverage or access indicator. |
| NoDocbcCost | Could not see doctor because of cost indicator. |
| GenHlth | General health rating. |
| MentHlth | Mental health days. |
| PhysHlth | Physical health days. |
| DiffWalk | Difficulty walking indicator. |
| Sex | Sex category encoded in the cleaned dataset. |
| Age | Age group code. |
| Education | Education level code. |
| Income | Income level code. |

## Notes

- Main dashboard KPIs: diabetes prevalence by activity, blood pressure, cholesterol, age, and mobility indicators.
- Most fields are binary indicators where `1` means yes/present and `0` means no/not present.
