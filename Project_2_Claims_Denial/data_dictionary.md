# Data Dictionary - Medical Claims Denial Analysis

## Source Note

`claims_clean_data.csv` is a cleaned portfolio practice dataset with 1,000 medical claim records. It should be treated as synthetic or de-identified sample data for revenue cycle analytics demonstration, not production claim data.

## Grain

One row represents one claim.

## Fields

| Field | Description |
| --- | --- |
| Claim ID | Unique claim identifier. |
| Provider ID | Provider identifier. |
| Patient ID | De-identified patient identifier. |
| Date of Service | Date associated with the claim service. |
| Billed Amount | Amount billed for the claim. |
| Procedure Code | Procedure or CPT-style code. |
| Diagnosis Code | Diagnosis code associated with the claim. |
| Allowed Amount | Amount allowed by payer rules. |
| Paid Amount | Amount paid. |
| Insurance Type | Payer category, such as Commercial, Medicaid, Medicare, or Self-Pay. |
| Claim Status | Current claim status. |
| Reason Code | Denial or processing reason category. |
| Follow-up Required | Indicates whether staff follow-up is needed. |
| AR Status | Accounts receivable status. |
| Outcome | Final or current payment outcome. |
| Denied Amount | Dollar amount denied. |
| Payment % | Paid amount as a percentage of billed or allowed amount. |
| Claim Type | Claim grouping used in the dashboard. |

## Notes

- Main dashboard KPIs: denied claim count, denial rate, denied dollars, and follow-up volume.
- Fields such as `Reason Code`, `Insurance Type`, and `Procedure Code` are useful for denial-prevention analysis.
