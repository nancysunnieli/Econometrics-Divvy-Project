# Econometrics-Divvy-Project
In this project, we analyze the effect of change in temperature on the number of daily divvy rides using STATA
<br /><br />
# Decription of Files in Repository<br />
Datasets: <br />
1.) Divvy Data By Date and origin.dta (provided by professor. This is Divvy data from June 27, 2013 to December 31, 2019)<br />
2.) Divvy data by date.dta (provided by professor. This is Divvy data from June 27, 2013 to December 31, 2019) <br />
3.) raw_weather_data.dta (this is the raw weather data acquired from NOAA) <br />
4.) raw_weather_data.csv (this is the same data as raw_weather_data.dta, except it is in csv format)<br />
5.) cleaned-weather-data.dta (this is the cleaned weather data)<br />
6.) DivvyDataEdited.dta (edited divvy data for analysis) <br />
7.) merged_data.dta (this is the merged data we use for analysis. It merges cleaned-weather-data.dta and DivvyDataEdited.dta) <br />
<br /><br />
Scripts: <br />
1.) change_date_and_origin_data (do file that creates DivvyDataEdited.dta from Divvy Data by Date.dta)<br />
2.) clean-weather-data (do file that created cleaned-weather-data.dta from raw_weather_data.dta)<br />
3.) merging datasets (do file that merges cleaned-weather-data.dta and DivvyDataEdited.dta and creates merged_data.dta)<br />
4.) running regressions (do file that runs the regressions using merged_data.dta)<br />
5.) All commands (do file containing all of the above commands) <br />
<br /><br />
Graphics: <br />
This directory includes all the images generated
