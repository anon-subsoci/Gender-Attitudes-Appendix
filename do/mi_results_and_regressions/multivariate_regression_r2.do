/*
Dependencies:
abscale_multiple_imputation.dta
sexatt_multiple_imputation.dta
genrole_multiple_imputation.dta
famresp_multiple_imputation.dta

Outputs:
multivariate_regression_results_r2.log
*/

log using multivariate_regression_results_r2, replace text
use abscale_multiple_imputation.dta, clear

mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
mibeta abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
mi extract 0, clear

use sexatt_multiple_imputation.dta, clear
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
mibeta sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
mi extract 0, clear

use genrole_multiple_imputation.dta, clear
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
mibeta genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
mi extract 0, clear

use famresp_multiple_imputation.dta, clear
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
mibeta famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
mi extract 0, clear

log close