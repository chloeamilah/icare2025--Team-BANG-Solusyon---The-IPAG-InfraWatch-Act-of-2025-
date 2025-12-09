# DATA DICTIONARY  
## Dataset 4 — PSA Total Population, Household Population, and Number of Households (2020 CPH)

### Source  
Philippine Statistics Authority – 2020 Census of Population and Housing (CPH)

### Description  
Contains total population counts per region and province/HUC, including number of households and household population.

---

## Variables

| Variable | Type | Description |
|---------|------|-------------|
| region | string | Name of PSA region |
| province_huc | string | Province or Highly Urbanized City |
| total_population | integer | Total population counted in 2020 CPH |
| household_population | integer | Number of people living in households (excludes institutional population) |
| number_of_households | integer | Total number of households in the LGU |


---

## Notes / Limitations  
- Based strictly on 2020 reference date: May 1, 2020.  
- Highly Urbanized Cities are separate from their provinces.  
- No barangay-level data included in this dataset.
