#!/bin/bash
#set -e
#set -u
#set -o pipefail

# ------------------------------------------------------------------
# 			staehlo 2018-04-20
#			1_bash_script.sh
#			Downloading data from UN repositories.
#			Preparing data for R analysis
# ------------------------------------------------------------------

# Create directories for data and results:
mkdir data
# switch to data folder:
cd data

# Download data
# Data source = <https://esa.un.org/unpd/wpp/Download/Standard/Population/> (accessed 2018-04-19)  
# Choose *Standard Projections* and *CSV format* on website.
# Download *Population - All variants (CSV, 26.36 MB)* and *Period Indicators - Medium variant (most used) (CSV, 1.29 MB)* via the bash:
wget "https://esa.un.org/unpd/wpp/DVD/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2017_TotalPopulationBySex.csv" # link needs to be in quotes as it contains parentheses
wget "https://esa.un.org/unpd/wpp/DVD/Files/1_Indicators%20(Standard)/CSV_FILES/WPP2017_Period_Indicators_Medium.csv" # link needs to be in quotes as it contains parentheses

# Take a look at WPP2017_TotalPopulationBySex.csv
head -n 5 WPP2017_TotalPopulationBySex.csv | column -t -s ","
# At 2014, all prediction variants (i.e. Medium, High, Low, Constant fertility, etc) still have the same population data.
grep "Bangladesh.*2014" WPP2017_TotalPopulationBySex.csv |  column -t -s ","
# From 2015 on, data points correspond to predictions (the different variants have different values)
grep "Bangladesh.*2014" WPP2017_TotalPopulationBySex.csv |  column -t -s ","
# Create population data file with header, only Bangladesh, only Medium-variant and years from 1950 till 2014
awk -F ","  'NR==1 || $2 ~ /Bangladesh/ && $4 ~ /Medium/ && $5 <= 2014 ' WPP2017_TotalPopulationBySex.csv > Bangladesh_population_history.csv
# Check number of data rows
grep -v "LocID" Bangladesh_population_history.csv | wc -l
# --> 65

# Take a look at WPP2017_Period_Indicators_Medium.csv"
head -n 5 WPP2017_Period_Indicators_Medium.csv
# Create indicator file with header, Location=Bangladesh, variant=Medium, MidPeriod from 1950 to 2014
awk -F ","  'NR==1 || $2 ~ /Bangladesh/ && $4 ~ /Medium/ && $6 <= 2014 ' WPP2017_Period_Indicators_Medium.csv > Bangladesh_indicator_history.csv
# Check number of data rows
grep -v "LocID" Bangladesh_indicator_history.csv | wc -l
# --> 13

# switch back to main directory
cd ..

# Data are ready for R
