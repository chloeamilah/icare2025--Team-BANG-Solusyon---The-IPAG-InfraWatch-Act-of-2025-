# NOTES & LIMITATIONS — Sumbong sa Pangulo: Flood Control Projects

## 1. Source and extraction

- **Origin:** Compiled from government infrastructure data (e.g., DPWH project and contract records) filtered to **flood-control related projects**.  
- **Processing:** Records were harmonized into a single table with standardized fields for location, contract amounts, contractor names, timelines, and contractor-relationship indicators.  
- **Linkages:** Fields such as `InterRelatedContractor` and `RelatedInDataset` come from additional processing that looks for connections among contractors appearing in the same dataset.

> Organizers may add a short paragraph here with the exact pipeline description (e.g., scraped from ___, joined with ___ on ___).

---

## 2. Coverage limitations

- The dataset **only includes flood-control–related projects**, not all DPWH or national infrastructure projects.  
- Some records may have **blank or generic municipality fields**, especially where only DEO-level location is available.  
- Time coverage appears to focus on projects with `InfraYear` around 2018 and completion around 2022–2023; projects outside this period may be under-represented.  
- The dataset does **not** include detailed breakdowns of quantities, bill of materials, or actual physical accomplishment; it is mainly **contract-level** information.

---

## 3. Data quality issues

- **Inconsistent text fields:** Contractor names, DEO names, and locations may have spelling variations or formatting differences (e.g., commas, abbreviations).  
- **Dates:**  
  - `CompletionDateActual`, `CompletionDateOriginal`, and `StartDate` are sometimes missing or may reflect administrative, not physical, completion.  
  - System metadata fields (`CreationDate_date`, `EditDate_date`) may post-date actual project work because of batch uploading.  
- **Duplicates:**  
  - Some records are flagged with `Duplicates = TRUE`, indicating possible double counting of the same project or contract.  
- **Contract amounts:**  
  - Financial fields are in nominal PHP, not inflation-adjusted.  
  - Extreme values may reflect data entry errors or special multi-year/clustered contracts.

Participants are encouraged to run basic validation (summary statistics, min/max ranges, unique counts) before analysis.

---

## 4. Interpretation warnings

- **Presence of anomalies is not proof of corruption.**  
  Short durations, high contract amounts, or repeated contractors are **signals for further investigation**, not direct evidence of wrongdoing.

- **Contractor linkages (`RelatedInDataset`) are analytic constructs.**  
  They indicate **co-appearance or detected relations in the dataset**, not legally established corporate control or collusion.

- **Missing data limits some analyses.**  
  For example, if completion dates are missing, duration analysis will be incomplete; if geocoordinates are missing, some projects will not appear on maps.

When presenting findings, teams should be explicit about:
- What the data can and cannot show;  
- Which assumptions they adopted (e.g., how they define “delay,” “high-risk contractor,” or “outlier cost”).

---

## 5. Suggested handling

- Treat **text fields** (contractor, DEO, municipality) using cleaning steps (trim, upper-case, simple replacements) before grouping.  
- Use `GlobalID` as the **unique record ID**; where `Duplicates = TRUE`, consider dropping the duplicate row or consolidating information.  
- For timelines:  
  - Compute `duration_days = CompletionDateActual - StartDate` where both dates are present.  
  - Flag negative or extremely short durations to inspect data quality vs genuine anomalies.  
- For financial analysis:  
  - Compare `ContractCost` to `ApprovedBudgetForTheContract` (e.g., percentage of ABC) to identify under- or near-ceiling awards.  
  - Consider log transformation or winsorization when visualizing highly skewed contract values.

Teams should document all cleaning and assumption choices in their notebooks or code so that judges can evaluate transparency and reproducibility.
