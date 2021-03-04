// creating graph of trips and average temperature
line trips temp_avg, title("Number of Trips to Avg. Temp")
graph export trips_temp.jpg, replace
line lntrips temp_avg, title("Natural Logarithm of the Number of Trips to Avg. Temp")
graph export lntrips_temp.jpg, replace

// running regressions
use "/Users/nancyli/Desktop/ECON 11020 Final Project/merged_data.dta"


// regressing trips against average temperature and controlling for other regressors
regress trips temp_avg
est sto A1

regress trips temp_avg snow_depth
est sto A2

regress trips temp_avg snow_depth snow
est sto A3

regress trips temp_avg snow_depth snow thunder
est sto A4

regress trips temp_avg snow_depth snow thunder prcp
est sto A5

regress trips temp_avg snow_depth snow thunder prcp sleet
est sto A6

regress trips temp_avg snow_depth snow thunder prcp sleet hail
est sto A7

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime
est sto A8

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke
est sto A9

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind
est sto A10

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december
est sto A11

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day
est sto A12

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer
est sto A13

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter
est sto A14

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring
est sto A15

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring autumn
est sto A16

regress trips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring autumn day_of_week
est sto A17

//
regress lntrips temp_avg
est sto B1

regress lntrips temp_avg snow_depth
est sto B2

regress lntrips temp_avg snow_depth snow
est sto B3

regress lntrips temp_avg snow_depth snow thunder
est sto B4

regress lntrips temp_avg snow_depth snow thunder prcp
est sto B5

regress lntrips temp_avg snow_depth snow thunder prcp sleet
est sto B6

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail
est sto B7

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime
est sto B8

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke
est sto B9

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind
est sto B10

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december
est sto B11

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day
est sto B12

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer
est sto B13

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter
est sto B14

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring
est sto B15

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring autumn
est sto B16

regress lntrips temp_avg snow_depth snow thunder prcp sleet hail rime smoke wind january february march april may june july august september october november december day summer winter spring autumn day_of_week
est sto B17

// creating tables of the regressions we just ran
est table A*, star b(%9.0fc)
est table B*, star b(%5.4fc)
