# Data Dictionary - ER Wait Time Optimization

## Source Note

`er_wait_times_data_cleaned.csv` is a cleaned portfolio practice dataset with 5,000 emergency department visit records. It should be treated as synthetic or de-identified sample data for analytics demonstration, not production patient data.

## Grain

One row represents one ER visit.

## Fields

| Field | Description |
| --- | --- |
| Visit ID | Unique visit identifier. |
| Patient ID | De-identified patient identifier. |
| Hospital ID | Hospital identifier. |
| Hospital Name | Facility name used in the sample data. |
| Region | Rural or urban facility grouping. |
| Visit Date | Timestamp of the ER visit. |
| Day of Week | Weekday extracted from the visit date. |
| Season | Season grouping for the visit date. |
| Time of Day | Visit time block. |
| Urgency Level | Patient acuity grouping. |
| Nurse-to-Patient Ratio | Staffing ratio indicator used for analysis. |
| Specialist Availability | Specialist availability count or score. |
| Facility Size (Beds) | Facility bed count. |
| Time to Registration (min) | Minutes from arrival to registration. |
| Time to Triage (min) | Minutes from registration or arrival to triage. |
| Time to Medical Professional (min) | Minutes until contact with a medical professional. |
| Total Wait Time (min) | Total wait time used as the primary KPI. |
| Patient Outcome | Visit outcome category. |
| Patient Satisfaction | Satisfaction score in the sample data. |

## Notes

- Main dashboard KPI: average `Total Wait Time (min)`.
- Useful groupings: `Urgency Level`, `Time of Day`, `Day of Week`, `Season`, and `Nurse-to-Patient Ratio`.
