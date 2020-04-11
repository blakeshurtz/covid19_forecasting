# covid19_forecasting
[Good Judgement Project 2.0 COVID19 forecasting tournament](https://www.gjp2.org/)

This repo contains the data, scripts and graphs that I'm using to forecast COVID19 mortality dates.

### Data
The data is a spreadsheet "reg.xlsx" that contains data primarily from [European Center for Disease Prevention and Control](https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide). Because the forecasting tournament uses WHO data, I have adjusted the number of deaths by referencing the [WHO Situation reports](https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/).

A data dictionary is included in the tab "datadictionary"

### Scripts
Run the scripts in order. It is recommended that you download the R project file in order to locate the data file within the project directory. The scripts should be executed in order: 01- rscript.R, 02- bins.R, then any of the following scripts which generate the plots.

### Plots 
Plots from the aforementioned scripts are saved as 1200 x 600 pixel jpegs. The multi-colored vertical lines refer to the binned number of fatalities on a forecast date. The question is, which bin will the total number of fatalities fall into? The black "x" marks represent the cumulative number of fatalities to date. There are no predictions on the plots.


