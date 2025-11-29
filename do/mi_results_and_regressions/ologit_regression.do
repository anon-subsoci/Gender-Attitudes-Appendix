/*
Dependencies:
abscale_multiple_imputation.dta
sexatt_multiple_imputation.dta
genrole_multiple_imputation.dta
famresp_multiple_imputation.dta
outreg2 -ssc install outreg2-

Outputs:
ologit_regression_results.log
ologit_regression_results_all3race.xls
*/

log using ologit_regression_results, replace text
use abscale_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3

mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, replace ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use sexatt_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3

mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use genrole_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3

mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi extract 0, clear

use famresp_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3

mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 1 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period1 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period2 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year age black other polviews attend cath baps jew noneoth south midwest srcbelt maeduc educ married nevmar widow childs inlab notin spin spnot prop hours if sex == 2 & period3 == 1
outreg2 using ologit_regression_results_all3race.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_regression_results_all3race.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi extract 0, clear

log close
