# Data Dictionary - Patient Admissions & Billing SQL Insights

## Source Note

`readmission_data_cleaned.csv` is a cleaned portfolio practice dataset for admissions and billing analysis. It should be treated as synthetic or de-identified sample data for analytics demonstration, not production patient data.

The current project analysis uses populated admission records. Blank spacer rows in the CSV are excluded from row counts and KPI calculations.

## Grain

One populated row represents one admission record.

## Fields

| Field | Description |
| --- | --- |
| Name | Sample patient name field. |
| Age | Patient age. |
| Gender | Patient gender. |
| Blood Type | Blood type category. |
| Medical Condition | Primary condition category. |
| Date of Admission | Admission date. |
| Doctor | Attending or assigned doctor in the sample data. |
| Hospital | Hospital name in the sample data. |
| Insurance Provider | Insurance provider or payer. |
| Billing Amount | Billing amount associated with the admission. |
| Room Number | Room number. |
| Admission Type | Elective, urgent, or emergency admission category. |
| Discharge Date | Discharge date. |
| Medication | Medication category in the sample data. |
| Test Results | Normal, abnormal, or inconclusive test result category. |

## Notes

- Main dashboard KPIs: admission count, average billing, total billing, payer billing share, and condition mix.
- This dataset does not include an explicit readmission flag, so the README focuses on admissions and billing insights rather than claiming measured readmission rates.
