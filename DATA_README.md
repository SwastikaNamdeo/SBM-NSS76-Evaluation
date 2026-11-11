# Data

The data are **not stored in this repository.** The household file used here
(`SBM.dta`, about 146 MB) is NSS microdata, which is larger than GitHub's 100 MB
file limit and should not be re-posted.

## Source
- **Survey:** National Sample Survey (NSS) 76th Round, July to December 2018
- **Schedule:** 1.2, Drinking Water, Sanitation, Hygiene and Housing Condition
- **Publisher:** Ministry of Statistics and Programme Implementation (MoSPI), Government of India
- **Where to get it:** MoSPI's microdata portal. Please check the terms of use there.

## How `SBM.dta` was built
[TODO: one or two lines on how you prepared the file, e.g. which unit-level
blocks you merged, how the `weight` variable was created (NSS weights are
usually Multiplier/100 or Multiplier/200), and any variables you renamed.]

## To reproduce the analysis
1. Download the NSS 76th Round (Sch 1.2) unit-level data and prepare `SBM.dta`.
2. Save it in this folder as `data/SBM.dta`.
3. Open `code/01_sbm_analysis.do` and run it. (`.gitignore` stops the file being uploaded to GitHub by accident.)
