clear
//log close

import excel using "DataBase\ens_2016_older_60.xlsx", firstrow


svyset ID [pweight=factor], strata(region) vce(linearized) singleunit(centered)



//chronic_pain---------------------------------------------------------------------
//------------------------------------------------------------------------------

//Confounder sex age educ_yrears SES region
svy: logistic MMSE_cat c.chronic_pain i.sex c.age c.educ_yrears c.SES i.region


//total_local_pain_without_lat---------------------------------------------------------------------
//------------------------------------------------------------------------------
//Confounder sex age educ_yrears SES region
svy: logistic MMSE_cat c.total_local_pain_without_lat i.sex c.age c.educ_yrears c.SES i.region


log close
