# Weather Forecast ETL Process
This project aims to create an automated Extract, Transform, Load (ETL) process for gathering daily weather forecast and observed weather data and loading it into a live report. The report will be used for further analysis by the analytics team to monitor and measure the historical accuracy of temperature forecasts by source and station.

Initially, the focus is on a proof-of-concept (POC) for a single station and one source. The data will be collected for Casablanca, Morocco, specifically for the temperature readings at noon (local time) each day. The primary objective is to extract both the actual temperature and the temperature forecasted for noon on the following day.

## Scripts
This project includes two shell scripts:
1. rx_poc.sh: This script is responsible for gathering weather data from a specified city, capturing the current temperature and the forecasted temperature for noon the following day. The data is then logged into the rx_poc.log file.
2. fc_accuracy.sh: This script measures the accuracy of forecasted temperatures against actual temperatures. It assigns accuracy labels based on predefined accuracy ranges and appends the accuracy information, along with the date and temperature data, to the historical_fc_accuracy.tsv file.

## Data Source
The weather data package provided by the open-source project wttr.in will be used as the data source for this project. wttr.in is a web service that offers weather forecast information in a simple and text-based format. You can find more information about the service on its [GitHub Repo](https://github.com/chubin/wttr.in).
