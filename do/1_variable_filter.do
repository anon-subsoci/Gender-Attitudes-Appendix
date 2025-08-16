/*
Dependencies:
RAW_GSS_DATA_SELECTED_VARIABLES.dta

Outputs: 
ALL_FINAL_VARIABLES_PROCESSED.dta
VARIABLE_FILTER.log
*/

log using VARIABLE_FILTER, replace text
use RAW_GSS_DATA_SELECTED_VARIABLES.dta, clear

* Replacing all Not Applicable values with missing
replace abpoor = . if abpoor == 0
replace abhlth = . if abhlth == 0
replace abnomore = . if abnomore == 0
replace abdefect = . if abdefect == 0
replace fepol = . if fepol == 0
replace abrape = . if abrape == 0
replace absingle = . if absingle == 0
replace abany = . if abany == 0
replace realrinc = . if realrinc == 0
replace realinc = . if realinc == 0
replace fefam = . if fefam == 0
replace fepresch = . if fepresch == 0
replace fechld = . if fechld == 0
replace premarsx = . if premarsx == 0
replace denom = . if denom == 0
replace polviews = . if polviews == 0
replace spevwork = . if spevwork == 0
replace spwrksta = . if spwrksta == 0
replace evwork = . if evwork == 0
replace hrs1 = . if hrs1 == -1
replace hrs2 = . if hrs2 == -1
replace sexeduc = . if sexeduc == 0
replace teensex = . if teensex == 0
replace xmarsex = . if xmarsex == 0
replace homosex = . if homosex == 0

* Recoding numeric non-answer values as missing values, typically "Don't know" or "No answer" or "Other"
replace polviews = . if polviews >= 8
replace age = . if age >= 98
replace hrs1 = . if hrs1 == 99
replace hrs2 = . if hrs2 == 99
replace attend = . if attend >= 9
replace childs = . if childs >= 9
replace educ = . if educ >= 98
replace maeduc = . if maeduc >= 97
* Abortion scale missing values
replace abdefect = . if abdefect >= 8
replace abnomore = . if abnomore >= 8
replace abhlth = . if abhlth >= 8
replace abpoor = . if abpoor >= 8
replace abrape = . if abrape >= 8
replace absingle = . if absingle >= 8
replace abany = . if abany >= 8
* Sexual attitudes scale missing values
replace sexeduc = . if sexeduc >= 8
replace teensex = . if teensex >= 8
replace xmarsex = . if xmarsex >= 8
replace premarsx = . if premarsx >= 8
replace homosex = . if homosex >= 5
* Gender roles missing values
replace fepol = . if fepol >= 8
* Family responsibilities missing values
replace fechld = . if fechld >= 8
replace fepresch = . if fepresch >= 8
replace fefam = . if fefam >= 8

* Creating periods
drop if year == 1972
gen period1 = 1 if year <= 1993
gen period2 = 1 if year >= 1993 & year <= 2004
gen period3 = 1 if year >= 2004 

* Boolean recoding of variables
replace abdefect = 0 if abdefect == 2
replace abnomore = 0 if abnomore == 2
replace abhlth = 0 if abhlth == 2
replace abpoor = 0 if abpoor == 2
replace abrape = 0 if abrape == 2
replace absingle = 0 if absingle == 2
replace abany = 0 if abany == 2

* Creating abortion scale variable
gen abscale = abdefect + abnomore + abhlth + abpoor + abrape + absingle + abany
* Abortion scale Cronbach's Alpha reliability test
alpha abdefect abnomore abhlth abpoor abrape absingle abany
* Abortion rescaling to range from 0 to 10
replace abscale = abscale/.7

* Remove "Depends" response from sexeduc variable
replace sexeduc = . if sexeduc == 3

* Sexual attitudes scale Cronbach's Alpha reliability test
alpha sexeduc premarsx teensex homosex xmarsex, std gen(sexatt)
* Creating sexual attitudes scale
egen smin = min(sexatt)
replace smin = abs(smin)
replace sexatt = sexatt + smin
egen smax = max(sexatt)
* Sexual attitudes rescaling to range from 0 to 10
replace sexatt = sexatt/(smax * .1)

* Gender roles scale only uses fepol. fehome & fepres depricated in many recent GSS surveys
* Recoding fepol to boolean
replace fepol = fepol - 1
* Creating gender roles scale
gen genrole = fepol
* Gender roles attitudes rescaling to range from 0 to 10
replace genrole = genrole/.1

* Reverse fechld values to now go to conservative to liberal
replace fechld = (fechld * -1) + 5
* Creating family responsibilities scale
gen famresp = fechld + fepresch + fefam
* Family responsibilities Cronbach's Alpha reliability test
alpha fechld fepresch fefam
* Family responsibilities rescaling to range from 0 to 10
replace famresp = (famresp-3)/.9

* Regional recoding
gen south = 0
gen midwest = 0
* Southern region coded to included South Atlantic, East South Central, and West South Central regions.
replace south = 1 if region == 5
replace south = 1 if region == 6
replace south = 1 if region == 7
* Midwest region coded to included East North Central and West North Central
replace midwest = 1 if region == 3
replace midwest = 1 if region == 4
* All other regions are grouped together: New England, Middle Atlantic, Mountain, and Pacific

* Urban/rural recoding
* note 3 is central cities and suburbs of the 100 lagest MSAs
* 2 is all the rest of counties having towns of 10000 or more
* 1 is everthing else
replace srcbelt = 3 if srcbelt <= 4
replace srcbelt = 2 if srcbelt == 5
replace srcbelt = 1 if srcbelt == 6
* Religion definitions
gen mainline = 0
gen cath = 0
gen bapsect = 0
gen jewish = 0
gen noneoth = 0
replace bapsect = 1 if denom >= 10 & denom <= 18
replace bapsect = 1 if (relig == 1 & denom >= 60 & denom <= 99)
replace mainline = 1 if denom >= 20 & denom <= 50
replace cath = 1 if relig == 2
replace jewish = 1 if relig == 3
replace noneoth = 1 if relig >= 4

* Marital status
gen married = 1
gen widowed = 0
gen divorced = 0
gen nevmar = 0
replace widowed = 1 if marital == 2
replace divorced = 1 if marital == 3
replace divorced = 1 if marital == 4
replace nevmar = 1 if marital == 5
replace married = 0 if (widowed == 1 | divorced ==1 | nevmar == 1)

* Race recode
gen white = 0 
replace white = 1 if race == 1

* Labor force recode
* To get the variable in Plutzer 1988 paper (never worked and never been in the labor force, currently in labor force, not currently in labor force but have worked in the past)
gen inlaborf = 0
replace inlaborf = 1 if wrkstat <= 4
gen notinlbf = 0
replace notinlbf = 1 if inlaborf == 0
gen nevwork = 0
replace nevwork = 1 if evwork == 2
replace notinlbf = 0 if nevwork == 1

* Spouse labor force recode
* To get the parallel variable to the above (never worked and never been in the labor force, currently in labor force, not currently in labor force but have worked in the past)
gen spinlabo = 0
replace spinlabo = 1 if spwrksta <= 4
gen spnotinl = 0
replace spnotinl = 1 if spinlabo == 0
gen spnevwor = 0
replace spnevwor = 1 if spevwork == 2
replace spnotinl = 0 if spnevwor == 1

* Income recodes
* We are using realinc and realrinc instead of recoding via Plutzer's procedure. The results should be similar but this difference prevents an exact replication.
* Calculates respondent's proportion of family income
gen propinc = realrinc/realinc

* Hours worked combined
gen hours = hrs1
replace hours = hrs2 if hrs1 ==.

* Politcal orientation dummy variables
gen lib = 1 if polviews <= 3
gen mod = 1 if polviews == 4
gen cons = 1 if polviews >= 5 & polviews <= 7

* Drop Black oversamples
drop if sample == 4
drop if sample == 5
drop if sample == 7

compress
save ALL_FINAL_VARIABLES_PROCESSED.dta, replace
log close
