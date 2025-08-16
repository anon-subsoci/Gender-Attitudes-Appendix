/*
Dependencies:
abscale_multiple_imputation.dta
sexatt_multiple_imputation.dta
genrole_multiple_imputation.dta
famresp_multiple_imputation.dta
outreg2 -ssc install outreg2-

Outputs: 
multivariate_regression_results_no_r2.xls
MULTIVARIATE_REGRESSION_NO_R2.log
*/

log using MULTIVARIATE_REGRESSION_NO_R2, append text
use abscale_multiple_imputation.dta, clear
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Men, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Men, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Men, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Men, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Men, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Men, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Women, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Women, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Women, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Women, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Women, Abscale) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Women, Abscale) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use sexatt_multiple_imputation.dta, clear
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Men, sexatt) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Men, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Men, sexatt) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Men, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Men, sexatt) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Men, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Women, sexatt) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Women, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Women, sexatt) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Women, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Women, sexatt) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Women, sexatt) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use genrole_multiple_imputation.dta, clear
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Men, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Men, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Men, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Men, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Men, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Men, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Women, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Women, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Women, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Women, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Women, genrole) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Women, genrole) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use famresp_multiple_imputation.dta, clear
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Men, famresp) excel dec(4) noaster noparen
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Men, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Men, famresp) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Men, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Men, famresp) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Men, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_1_Women, famresp) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_1_Women, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_2_Women, famresp) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_2_Women, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp year age white polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(Period_3_Women, famresp) excel dec(4) noaster noparen 
outreg2 using multivariate_regression_results_no_r2.xls, append ctitle(P_Period_3_Women, famresp) excel dec(4) noaster noparen pvalue
mi extract 0, clear
log close
