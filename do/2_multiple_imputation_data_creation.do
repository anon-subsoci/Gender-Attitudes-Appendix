/*
Dependencies:
ALL_FINAL_VARIABLES_PROCESSED.dta

Outputs: 
abscale_multiple_imputation.dta
sexatt_multiple_imputation.dta
genrole_multiple_imputation.dta
famresp_multiple_imputation.dta
MULTIPLE_IMPUTATION_OPERATION.log
*/

log using MULTIPLE_IMPUTATION_OPERATION, append text
use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
* Impute missing values for abscale regression
drop if abscale == .
mi set mlong
mi register impute prop hours childs age educ maeduc attend polviews
mi impute mvn prop hours childs age educ maeduc attend polviews = abscale sex inlab notin spin spnot widow married nevmar white south midwest srcbelt cath baps jew noneoth year, add(20) rseed(1234)
* Saves imputations for further analyses
save abscale_multiple_imputation, replace

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
* Impute missing values for sexatt regression
drop if sexatt == .
mi set mlong
mi register impute prop hours childs age educ maeduc attend polviews
mi impute mvn prop hours childs age educ maeduc attend polviews = sexatt sex inlab notin spin spnot widow married nevmar white south midwest srcbelt cath baps jew noneoth year, add(20) rseed(1234)
* Saves imputations for further analyses
save sexatt_multiple_imputation, replace

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
* Impute missing values for genrole regression
drop if genrole == .
mi set mlong
mi register impute prop hours childs age educ maeduc attend polviews
mi impute mvn prop hours childs age educ maeduc attend polviews = genrole sex inlab notin spin spnot widow married nevmar white south midwest srcbelt cath baps jew noneoth year, add(20) rseed(1234)
* Saves imputations for further analyses
save genrole_multiple_imputation, replace

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
* Impute missing values for famresp regression
drop if famresp == .
mi set mlong
mi register impute prop hours childs age educ maeduc attend polviews
mi impute mvn prop hours childs age educ maeduc attend polviews = famresp sex inlab notin spin spnot widow married nevmar white south midwest srcbelt cath baps jew noneoth year, add(20) rseed(1234)
* Saves imputations for further analyses
save famresp_multiple_imputation, replace
log close
