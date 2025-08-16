***********************************************
* bivariate_regression_final.do                 *
* estimates ion models using MI     *
* send ion output to excel files     *
* last updated 12/5/2020            *
*************************************************
log using bivariate_regression_results, replace text
use abscale_multiple_imputation.dta, clear
mi estimate, post: regress abscale year if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, replace ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: regress abscale year if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: regress abscale year if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: regress abscale year if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: regress abscale year if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, Abscale) excel dec(4) noaster noparen pvalue

mi estimate, post: regress abscale year if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale age if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale white if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale polviews if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale attend if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale south midwest if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale srcbelt if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale maeduc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale educ if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale married nevmar widow if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale childs if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale inlab notin if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale spin spnot if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale propinc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi estimate, post: regress abscale hours if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, Abscale) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, Abscale) excel dec(4) noaster noparen pvalue
mi extract 0, clear
* sexatt
use sexatt_multiple_imputation.dta, clear
mi estimate, post: regress sexatt year if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: regress sexatt year if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: regress sexatt year if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: regress sexatt year if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: regress sexatt year if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, sexatt) excel dec(4) noaster noparen pvalue

mi estimate, post: regress sexatt year if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt age if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt white if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt polviews if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt attend if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt south midwest if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt srcbelt if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt maeduc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt educ if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt married nevmar widow if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt childs if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt inlab notin if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt spin spnot if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt propinc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi estimate, post: regress sexatt hours if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, sexatt) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, sexatt) excel dec(4) noaster noparen pvalue
mi extract 0, clear
* genrole
use genrole_multiple_imputation.dta, clear
mi estimate, post: regress genrole year if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: regress genrole year if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: regress genrole year if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: regress genrole year if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: regress genrole year if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, genrole) excel dec(4) noaster noparen pvalue

mi estimate, post: regress genrole year if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole age if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole white if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole polviews if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole attend if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole south midwest if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole srcbelt if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole maeduc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole educ if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole married nevmar widow if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole childs if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole inlab notin if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole spin spnot if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole propinc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi estimate, post: regress genrole hours if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, genrole) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, genrole) excel dec(4) noaster noparen pvalue
mi extract 0, clear
* famresp
use famresp_multiple_imputation.dta, clear
mi estimate, post: regress famresp year if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 1 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P1, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: regress famresp year if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 1 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P2, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: regress famresp year if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 1 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Men_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Men_P3, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: regress famresp year if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 2 & period1 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P1, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P1, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: regress famresp year if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 2 & period2 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P2, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P2, famresp) excel dec(4) noaster noparen pvalue

mi estimate, post: regress famresp year if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp age if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp white if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp polviews if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp attend if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp cath baps jew noneoth if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp south midwest if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp srcbelt if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp maeduc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp educ if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp married nevmar widow if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp childs if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp inlab notin if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp spin spnot if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp propinc if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi estimate, post: regress famresp hours if sex == 2 & period3 == 1
outreg2 using bivariate_regression_results_all.xls, append ctitle(Women_P3, famresp) excel dec(4) noaster noparen
outreg2 using bivariate_regression_results_all.xls, append ctitle(P_Women_P3, famresp) excel dec(4) noaster noparen pvalue
mi extract 0, clear
log close
