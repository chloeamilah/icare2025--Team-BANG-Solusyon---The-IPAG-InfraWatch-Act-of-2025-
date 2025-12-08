# DATASETS OVERVIEW — ICARE 2025 POLICY HACKATHON  
Theme: “Big Data, Bold Reforms: Transforming Big Data into Smart Policies for Better Governance.”

This repository contains two official datasets for the ICARE2025 Policy Hackathon, curated to help teams explore corruption risks, governance failures, and opportunities for reform through evidence-based analysis.

---

# DATASET 1 — **Flood Control Infrastructure Projects** (DPWH-linked, Sumbong sa Pangulo)

**Description:**  
A geocoded database of flood control infrastructure projects, including contract amounts, approved budgets (ABC), actual/target completion dates, implementing offices, and contractor relationships.

**What it allows you to analyze:**  
- Patterns of **delayed**, **overspent**, or **repetitive** projects  
- **Contractor network analysis**: potential dominance or collusion through `RelatedInDataset`  
- **Geographic clustering** of suspicious patterns (e.g., repeated no-delay high-cost projects)  
- **Administrative accountability** via implementing offices (DEOs)  
- Analysis of **Presidential terms**, funding years, and long-term completion delays  

**Key anti-corruption angles:**  
- Suspiciously short implementation durations  
- Over-concentrated contractors winning multiple packages  
- Unrealistic costs relative to ABC  
- Phase-splitting (multiple components with same location/purpose)  
- Projects repeatedly extended without clear justification  

**Primary Identifier:**  
`GlobalID`  

---

# DATASET 2 — **COMELEC × LGU Fiscal Panel Data** (Election + BLGF fiscal indicators)

**Description:**  
A multi-year LGU panel containing fiscal performance, sectoral expenditures, IRA reliance, political competition metrics (vote share, effective number of candidates), incumbency, and electoral outcomes.

**What it allows you to analyze:**  
- Does **spending spike before elections**?  
- Do incumbents who overspend win more votes?  
- Are politically dominant LGUs less transparent or less socially-oriented?  
- Does IRA dependence weaken accountability?  
- Does social services spending correlate with re-election success?  

**Key anti-corruption angles:**  
- **Patronage spending** (election-year surges in welfare, admin costs)  
- **Fiscal misalignment** (high admin spending, low social spending)  
- **Political monopolies** revealed by ENC and vote concentration  
- **Revenue undercollection** in politically complacent LGUs  

**Primary Identifier:**  
`(region, lgu, year)` or `(pid, year)`

---

# RELATIONSHIP BETWEEN BOTH DATASETS

Although independent, both datasets enable **cross-cutting governance analysis**:

| Aspect | Dataset 1 | Dataset 2 | Cross-Possibility |
|--------|-----------|-----------|--------------------|
| Infrastructure quality | ✔ | — | Combine with social expenditure trends |
| Fiscal behavior | — | ✔ | Link infra spending patterns to fiscal priorities |
| Governance risk | ✔ | ✔ | Build a composite governance risk index |
| Political competition | — | ✔ | Explore influence of political monopoly on project execution |
| Regional patterns | ✔ | ✔ | Region-based corruption vulnerability mapping |
| Accountability prospects | ✔ | ✔ | Identify areas where governance failures overlap |

**Teams may propose integrated governance frameworks using both datasets.**

---

#  Suggested Combined Use:

- Map where **DPWH flood control anomalies** occur and compare with LGUs that have **low social services spending** or **high IRA dependence**.  
- Identify provinces where **political monopolies (low ENC, high p1)** coincide with **poor project completion performance**.  
- Assess whether **governor incumbents** linked to certain political parties oversee **systematically delayed projects**.  

---

# LICENSE  
Data is for **research and educational purposes only**.  
No personal identification or defamatory interpretation is allowed.
