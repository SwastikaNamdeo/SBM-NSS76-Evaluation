br
tab Access_latrine
tab latrine_used_household
tab latrine_type
tab bathroom_latrine_inpremises
tab Disposal_excreta
tab disposal_place
tab frequently_excreta_emptied
tab Disposal_faeces_children_upto3yr
tab availability_water_inlatrine
tab wash_hand_before_meal
tab wash_hand_after_defecation
tab latrine_type
tab latrine_code
tab reason_not_using_latrine
tab Social_group Access_latrine [iw=weight], row nofreq
bysort Sector: tab Social_group Access_latrine [iw=weight], row nofreq
tab State
fre State
tab Access_latrine if State==36
tab Access_latrine if State==10
tab Access_latrine if State==10 | State==36
tab Social_group Access_latrine if State==10
tab Social_group Access_latrine if State==36
tab Social_group Access_latrine if State==10 [iw=weight], row nofreq
tab Social_group Access_latrine if State==36 [iw=weight], row nofreq
tab NSS_Region
fre NSS_Region
tab latrine_type
tab Gender latrine_used_household [iw=weight], row nofreq
tab Gender latrine_used_household if State==10 [iw=weight], row nofreq
tab Gender latrine_used_household if State==36 [iw=weight], row nofreq
tab Social_group reason_not_using_latrine if State==10 [iw=weight], row nofreq
tab Social_group reason_not_using_latrine if State==36 [iw=weight], row nofreq
tab reason_not_using_latrine
bysort Sector: tab Social_group reason_not_using_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group reason_not_using_latrine if State==10 [iw=weight], row nofreq
tab Sector disposal_place [iw=weight], row nofreq
tab Sector disposal_place if State==36 [iw=weight], row nofreq
tab Sector disposal_place if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group reason_not_using_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group reason_not_using_latrine if State==10 [iw=weight], row nofreq
tab Disposal_faeces_children_upto3yr
tab water_sufficient
tab availability_water_inlatrine
bysort Sector: tab Social_group availability_water_inlatrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group availability_water_inlatrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group Access_latrine if State==36 [iw=weight], row nofreq
tab Sanitation_anybenifit
tab Sanitation_scheme_max_benefit
bysort Sector: tab Social_group Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group Sanitation_scheme_max_benefit if State==36 [iw=weight], row nofreq
bysort Sector: tab Religion Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
bysort Sector: tab Age Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
// we've taken access latrine , reason for not using latrine, and availability of water and have cross tabulated with social group and gender bysoeted with sector
bysort Sector: tab Social_group Access_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group Access_latrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender Access_latrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender Access_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group reason_not_using_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group reason_not_using_latrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender reason_not_using_latrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Gender reason_not_using_latrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group availability_water_inlatrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group availability_water_inlatrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender availability_water_inlatrine if State==36 [iw=weight], row nofreq
bysort Sector: tab Gender availability_water_inlatrine if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group Sanitation_scheme_max_benefit if State==36 [iw=weight], row nofreq
bysort Sector: tab Social_group Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
bysort Sector: tab Gender Sanitation_scheme_max_benefit if State==36 [iw=weight], row nofreq
bysort Sector: tab Gender Sanitation_scheme_max_benefit if State==10 [iw=weight], row nofreq
bysort Sector: tab Social_group Sanitation_anybenifit if State==36 [iw=weight], row nofreq
tab Access_latrine
tab reason_not_using_latrine
tab availability_water_inlatrine
gen Water_Available=0 if availability_water_inlatrine==4
drop Water_Available
gen Water_Available=0 if availability_water_inlatrine==2
replace Water_Available=0 if availability_water_inlatrine==3
replace Water_Available=1 if availability_water_inlatrine==1
replace Water_Available=2 if availability_water_inlatrine==4
tab Water_Available
fre Water_Available
logit Water_Available i.Social_group
logit Water_Available i.Social_group, or
logit Water_Available i.Gender
logit Water_Available i.Gender, or
logit Water_Available i.Sector
logit Water_Available i.Sector, or
