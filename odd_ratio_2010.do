clear
//log close

import excel using "DataBase\ens_2010.xlsx", firstrow


svyset ID [pweight=factor], strata(region) vce(linearized) singleunit(centered)


//reduc_mob---------------------------------------------------------------------
//------------------------------------------------------------------------------

//Confounder sex age educ_yrears SES region
svy: logistic chronic_pain i.reduc_mob i.sex c.age c.educ_yrears c.SES i.region


//depression---------------------------------------------------------------------
//------------------------------------------------------------------------------
//Confounder sex age educ_yrears SES region
svy: logistic chronic_pain i.depression i.sex c.age c.educ_yrears c.SES i.region


//anxiety---------------------------------------------------------------------
//------------------------------------------------------------------------------

//Confounder sex age educ_yrears SES region
svy: logistic chronic_pain i.anxiety i.sex c.age c.educ_yrears c.SES i.region


//malnutrition---------------------------------------------------------------------
//------------------------------------------------------------------------------

//Confounder sex age educ_yrears SES region
svy: logistic chronic_pain i.malnutrition i.sex c.age c.educ_yrears c.SES i.region