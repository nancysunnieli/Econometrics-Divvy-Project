// merging the two data sets for easy regressions
use "/Users/nancyli/Desktop/ECON 11020 Final Project/cleaned-weather-data.dta"

merge 1:1 date_string using "DivvyDataEdited.dta"
drop _merge
drop start_date
drop new_date
drop new_date1
gen day_of_week = dow(date_string)
gen lntrips = ln(trips)

// creating dummy variables for each month
gen january = 0
gen february = 0
gen march = 0
gen april = 0
gen may = 0
gen june = 0
gen july = 0
gen august = 0
gen september = 0
gen october = 0
gen november = 0
gen december = 0
replace january = 1 if num_month == 1
replace february = 1 if num_month == 2
replace march = 1 if num_month == 3
replace april = 1 if num_month == 4
replace may = 1 if num_month == 5
replace june = 1 if num_month == 6
replace july = 1 if num_month == 7
replace august = 1 if num_month == 8
replace september = 1 if num_month == 9
replace october = 1 if num_month == 10
replace november = 1 if num_month == 11
replace december = 1 if num_month == 12

// save "merged_data.dta", replace
save "/Users/nancyli/Desktop/ECON 11020 Final Project/merged_data.dta", replace
