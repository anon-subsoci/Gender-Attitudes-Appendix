*Create tables of polview scales to be copied into spreadsheet
log using political_summary, replace text
use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
drop if abscale == .
* No filter
tab year, summ(abscale)
* Separated by gender
tab year if sex == 1, summ(abscale)
tab year if sex == 2, summ(abscale)
* Moderates
tab year if mod == 1, summ(abscale)
tab year if mod == 1 & sex == 1, summ(abscale)
tab year if mod == 1 & sex == 2, summ(abscale)
* Liberals
tab year if lib == 1, summ(abscale)
tab year if lib == 1 & sex == 1, summ(abscale)
tab year if lib == 1 & sex == 2, summ(abscale)
* Conservatives
tab year if cons == 1, summ(abscale)
tab year if cons == 1 & sex == 1, summ(abscale)
tab year if cons == 1 & sex == 2, summ(abscale)

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
drop if genrole == .
* No filter
tab year, summ(genrole)
* Separated by gender
tab year if sex == 1, summ(genrole)
tab year if sex == 2, summ(genrole)
* Moderates
tab year if mod == 1, summ(genrole)
tab year if mod == 1 & sex == 1, summ(genrole)
tab year if mod == 1 & sex == 2, summ(genrole)
* Liberals
tab year if lib == 1, summ(genrole)
tab year if lib == 1 & sex == 1, summ(genrole)
tab year if lib == 1 & sex == 2, summ(genrole)
* Conservatives
tab year if cons == 1, summ(genrole)
tab year if cons == 1 & sex == 1, summ(genrole)
tab year if cons == 1 & sex == 2, summ(genrole)

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
drop if famresp == .
* No filter
tab year, summ(famresp)
* Separated by gender
tab year if sex == 1, summ(famresp)
tab year if sex == 2, summ(famresp)
* Moderates
tab year if mod == 1, summ(famresp)
tab year if mod == 1 & sex == 1, summ(famresp)
tab year if mod == 1 & sex == 2, summ(famresp)
* Liberals
tab year if lib == 1, summ(famresp)
tab year if lib == 1 & sex == 1, summ(famresp)
tab year if lib == 1 & sex == 2, summ(famresp)
* Conservatives
tab year if cons == 1, summ(famresp)
tab year if cons == 1 & sex == 1, summ(famresp)
tab year if cons == 1 & sex == 2, summ(famresp)

use ALL_FINAL_VARIABLES_PROCESSED.dta, clear
drop if sexatt == .
* No filter
tab year, summ(sexatt)
* Separated by gender
tab year if sex == 1, summ(sexatt)
tab year if sex == 2, summ(sexatt)
* Moderates
tab year if mod == 1, summ(sexatt)
tab year if mod == 1 & sex == 1, summ(sexatt)
tab year if mod == 1 & sex == 2, summ(sexatt)
* Liberals
tab year if lib == 1, summ(sexatt)
tab year if lib == 1 & sex == 1, summ(sexatt)
tab year if lib == 1 & sex == 2, summ(sexatt)
* Conservatives
tab year if cons == 1, summ(sexatt)
tab year if cons == 1 & sex == 1, summ(sexatt)
tab year if cons == 1 & sex == 2, summ(sexatt)

log close
