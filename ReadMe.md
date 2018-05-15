# Short analysis of Bangladesh's demographics

staehlo - 2018-04-20\
\
In 2013, the BBC aired a documentary with the titel *"Don't panic - The Truth about Population"*.
In it, the late Dr. Hans Rosling (1948 - 2017) claimed that Bangladesh is a role model of a country that has successfully managed to bridle its out-of-control human population growth.

This project is a short analysis to reassess Rosling's prediction. It will be based on data from the *Population Division* of the *Department of Economic and Social Affairs* of the *United Nations*.

And on the fly, it serves also as an exercise in:

- retrieving open-access data from a public source
- plotting data
- making basic projections based on data

You can find more information about the original documentary:

On the BBC website:
<http://www.bbc.co.uk/mediacentre/proginfo/2013/45/this-world-hans-rosling.html>

On Wikipedia:
<https://en.wikipedia.org/wiki/Don%27t_Panic_%E2%80%94_The_Truth_about_Population>

The complete talk is available on Youtube:
<https://www.youtube.com/watch?v=-UbmG8gtBPM>


## Table of contents

1. [Data source and description](#Data_Source)
2. [Software information](#System_information)
3. [Download and prepare data](#Download_data)
4. [Analysis in R](#Analysis_in_R)
5. [Acknowledgements](#Acknowledgements)


## Data source and description <a name="Data_source"></a>
<https://esa.un.org/unpd/wpp/Download/Standard/Population/> (accessed 2018-04-19)  
Select *Standard Projections* and *CSV format* on website.
Download *Population - All variants (CSV, 26.36 MB)* and *Period Indicators - Medium variant (most used) (CSV, 1.29 MB)*.

Description of data (copied from website):

**Population - All variants (CSV, 26.36 MB)**  
Total population by sex, annually from 1950 to 2100.

- PopMale: Total male population (thousands)
- PopFemale: Total female population (thousands)
- PopTotal: Total population, both sexes (thousands)

**Period Indicators - Medium variant (most used) (CSV, 1.29 MB)**  
Several indicators that are available for 5-year periods, from 1950-1955 to 2095-2100.

- TFR: Total fertility (live births per woman)
- NRR: Net reproduction rate (surviving daughters per woman)
- CBR: Crude birth rate (births per 1,000 population)
- Births: Number of births, both sexes combined (thousands)
- LEx *: Life expectancy at birth for both sexes combined (years)
- LExMale *: Male life expectancy at birth (years)
- LExFemale *: Female life expectancy at birth (years)
- IMR *: Infant mortality rate, q(1), for both sexes combined (infant deaths per 1,000 live births)
- Q5 *: Under-five mortality, 5q0, for both sexes combined (deaths under age five per 1,000 live births)
- CDR: Crude death rate (deaths per 1,000 population)
- Deaths: Number of deaths, both sexes combined (thousands)
- DeathsMale: Number of male deaths (thousands)
- DeathsFemale: Number of female deaths (thousands)
- CNMR *: Net migration rate (per 1,000 population)
- NetMigrations *: Net number of migrants, both sexes combined (thousands)
- GrowthRate: Average annual rate of population change (percentage)
- NatIncr: Rate of natural increase (per 1,000 population)
- SRB *: Sex ratio at birth (male births per female births)
- MAC *: Female mean age of childbearing (years)

\* not published for variants other than Medium.


## Software information <a name="System_information"></a>

Operating system:

	$ lsb_release -a  
	No LSB modules are available.  
	Distributor ID:	Ubuntu  
	Description:	Ubuntu 16.04.4 LTS  
	Release:	16.04  
	Codename:	xenial
	
Bash:

	$ bash --version  
	GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu)  
	Copyright (C) 2013 Free Software Foundation, Inc.  
	License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

R version:

	> R.version.string  
	[1] "R version 3.4.4 (2018-03-15)"


### Download and prepare data <a name="Download_data"></a>

See bash script:

*1_bash_script.sh*

Use Bash to:

- create directories for data and results
- download data
- prepare data for analysis in R


### Analysis in R <a name="Analysis_in_R"></a>

See knitR document (and corresponding html and PDF file):

*2_R_markdown_script.Rmd*


## Acknowledgments <a name="Acknowledgements"></a>

* Vince Buffalo - <https://github.com/vsbuffalo> and his book *"Bioinformatics Data Skills"*
* Inspiration: Dr. Hans Rosling (1948 - 2017)
