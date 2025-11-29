***********************************************
* ologit_bivariate_regression3race.do                 *
* estimates ion models using MI     *
* send ion output to excel files     *
* last updated 11/9/2025            *
*************************************************
log using ologit_bivariate_regression_results3race, replace text
use abscale_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3
* Note need to restart for each IV 
* list of IVs inlab notin prop hours spin spnot widow married nevmar childs age educ maeduc black other south midwest srcbelt cath baps jew noneoth attend polviews year
* drop if abscale == .
mi estimate, post: ologit abscale inlab notin if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, replace ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit abscale inlab notin if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit abscale inlab notin if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit abscale inlab notin if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit abscale inlab notin if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit abscale inlab notin if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale propinc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale hours if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale spin spnot if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale widow married nevmar if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale childs if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale age if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale educ if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale maeduc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale black other if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale south midwest if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale srcbelt if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale attend if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale polviews if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit abscale year if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi extract 0, clear

* sexatt
use sexatt_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3
* Note need to restart for each IV 
* list of IVs inlab notin prop hours spin spnot widow married nevmar childs age educ maeduc black other south midwest srcbelt cath baps jew noneoth attend polviews year
* drop if sexatt == .
mi estimate, post: ologit sexatt inlab notin if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit sexatt inlab notin if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit sexatt inlab notin if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit sexatt inlab notin if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit sexatt inlab notin if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit sexatt inlab notin if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt propinc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt hours if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt spin spnot if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt widow married nevmar if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt childs if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt age if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt educ if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt maeduc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt black other if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt south midwest if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt srcbelt if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt attend if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt polviews if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit sexatt year if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi extract 0, clear

* genrole
use genrole_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3
* Note need to restart for each IV 
* list of IVs inlab notin prop hours spin spnot widow married nevmar childs age educ maeduc black other south midwest srcbelt cath baps jew noneoth attend polviews year
* drop if genrole == .
mi estimate, post: ologit genrole inlab notin if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit genrole inlab notin if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit genrole inlab notin if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit genrole inlab notin if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit genrole inlab notin if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit genrole inlab notin if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole propinc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole hours if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole spin spnot if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole widow married nevmar if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole childs if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole age if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole educ if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole maeduc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole black other if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole south midwest if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole srcbelt if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole attend if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole polviews if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit genrole year if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi extract 0, clear

* famresp
use famresp_multiple_imputation.dta, clear
gen black = 0
replace black = 1 if race == 2
gen other = 0
replace other = 1 if race == 3
* Note need to restart for each IV 
* list of IVs inlab notin prop hours spin spnot widow married nevmar childs age educ maeduc black other south midwest srcbelt cath baps jew noneoth attend polviews year
* drop if famresp == .
mi estimate, post: ologit famresp inlab notin if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 1 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit famresp inlab notin if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 1 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit famresp inlab notin if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 1 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit famresp inlab notin if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 2 & period1 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit famresp inlab notin if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 2 & period2 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: ologit famresp inlab notin if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp propinc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp hours if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp spin spnot if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp widow married nevmar if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp childs if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp age if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp educ if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp maeduc if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp black other if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp south midwest if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp srcbelt if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp attend if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp polviews if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: ologit famresp year if sex == 2 & period3 == 1
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using ologit_bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi extract 0, clear
log close
