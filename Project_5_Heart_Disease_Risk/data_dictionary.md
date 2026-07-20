# Data Dictionary - Heart Disease Risk Analysis

## Source Note

`heart_disease_cleaned_data.csv` is a cleaned 303-record portfolio practice dataset for heart disease risk analysis. It should be treated as de-identified sample data for analytics demonstration.

## Grain

One row represents one patient record.

## Fields

| Field | Description |
| --- | --- |
| age | Patient age. |
| sex | Sex indicator; commonly encoded as 1 for male and 0 for female in this dataset format. |
| cp | Chest pain type code. |
| trestbps | Resting blood pressure. |
| chol | Serum cholesterol. |
| fbs | Fasting blood sugar indicator. |
| restecg | Resting electrocardiographic result code. |
| thalach | Maximum heart rate achieved. |
| exang | Exercise-induced angina indicator. |
| oldpeak | ST depression induced by exercise relative to rest. |
| slope | Slope of the peak exercise ST segment. |
| ca | Number of major vessels colored by fluoroscopy. |
| thal | Thalassemia-related code. |
| target | Original heart disease target severity/grouping. |
| heart_disease | Binary heart disease flag used for dashboarding; 1 means heart disease, 0 means no heart disease. |

## Notes

- Main dashboard KPIs: heart disease rate by gender, chest pain type, exercise-induced angina, cholesterol, heart rate, and age.
- The notebook is saved as `.ipynb` but uses an R kernel. The companion `.R` script is included for easier code review.
