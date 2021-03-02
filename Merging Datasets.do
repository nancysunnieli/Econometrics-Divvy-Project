// Merging Datasets


use "/Users/nancyli/Desktop/ECON 11020 Final Project/cleaned-weather-data.dta"

merge 1:1 date_string using "DivvyDataEdited.dta"
drop _merge
drop start_date
drop new_date
drop new_date1

save "merged_data.dta", replace

