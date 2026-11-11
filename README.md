# Swachh Bharat Mission Evaluation: Sanitation Access and Use in Telangana and Bihar

Research Project, M.A. Public Policy and Governance, Tata Institute of Social Sciences (TISS) Hyderabad.
**Author:** Swastika Namdeo


## Research question
Does access to a latrine translate into sustained use, and how do access, reasons for non-use and water availability differ by social group, gender and sector in a top-performing state (Telangana) and a low-performing state (Bihar)?

## Data
NSS 76th Round (July to December 2018), Schedule 1.2 on drinking water, sanitation, hygiene and housing condition (about 466,000 households). The data are not included in this repository; see [`data/README.md`](data/README.md) for the source and how to reproduce.

## Method
- Weighted cross-tabulations of latrine access, reasons for not using a latrine, water in the latrine and receipt of Swachh Bharat Mission benefits, by social group, gender and sector (rural/urban), for Bihar and Telangana.
- Logit models (odds ratios) for water availability in or around the latrine, by social group, gender and sector, with and without survey weights.
- A literature review of state-level studies on Telangana and Bihar.

## Key findings
- Access does not guarantee use: in Bihar, reported receipt of Mission benefits is high (about 84% for SC and OBC households in rural areas) while outcomes remain weaker.
- Reasons for non-use differ sharply: "personal preference" is common among Scheduled Tribe households in Bihar and negligible in Telangana, where affordability is the main barrier for Scheduled Tribes (38%).
- Water in the latrine is unequal across groups and sectors: the odds of water being available are higher for SC, OBC and Other households than for ST households, and urban odds are 2.2 times rural odds.
- Infrastructure, governance and social norms have to work together; building toilets alone is not enough.

## Repository structure
```
code/    01_sbm_analysis.do   Stata analysis file (cleaned)
data/    DATA_README.md            where to get the data (data not included)
logs/    SBM_analysis.smcl    Stata log from running the file
paper/   SwastikaNamdeo_SBM_Evaluation_Paper (PDF)
```

## How to run
1. Prepare `data/SBM.dta` (see `data/README.md`).
2. Edit the `global root` line at the top of `code/01_sbm_analysis.do`.
3. Run the do-file in Stata 17 or later. It installs the `fre` package if missing.

## Software
Stata

## Contact
Swastika Namdeo, [LinkedIn](https://www.linkedin.com/in/swastika-namdeo)
