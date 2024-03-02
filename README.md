# SPEI Calculation using R Programming
This project employs R programming to compute the Standardized Precipitation Evapotranspiration Index (SPEI), a widely used drought index. SPEI calculations were conducted for Bahawalnagar District, Punjab, Pakistan. The primary objective is to assess and monitor drought patterns across the region.

![SPEI Calculation R](/output-spei-bar-graph.png)

# Standardized Precipitation Evapotranspiration Index (SPEI)
The Standardized Precipitation Evapotranspiration Index (SPEI) is a drought index commonly used to assess and monitor drought conditions. It integrates both precipitation and evapotranspiration data, providing a standardized measure of drought severity that is comparable across different regions and time periods. SPEI accounts for the combined effects of precipitation deficits and excesses, as well as variations in temperature, soil moisture, and vegetation characteristics. By considering both precipitation and evapotranspiration, SPEI offers a more comprehensive understanding of drought conditions compared to indices based solely on precipitation.
The index is calculated by fitting a probability distribution to the monthly or seasonal precipitation and evapotranspiration data. It then standardizes the cumulative precipitation and evapotranspiration values to a normal distribution, allowing for the comparison of drought severity across different time scales.
SPEI values are typically reported in standard deviations from the long-term mean, with negative values indicating dry conditions (drought) and positive values indicating wet conditions (pluvial). The magnitude of the SPEI value corresponds to the severity of the drought or pluvial event, with more negative (or positive) values representing more severe drought (or pluvial) conditions.

# Data
The repository includes datasets encompassing rainfall, minimum and maximum temperature records spanning from 1992 to 2021. These datasets were meticulously collected by the Pakistan Meteorological Department and acquired for M.Phil Research purposes.

# Requirements

- RStudio version 2023.06.1 Build 524
- **R Libraries:** SPEI, ggplot2, lmomco, writexl

# Citation
If you use this repository or the data provided, please cite the following:
- Rehman, E. (2024). SPEI Calculation R. GitHub. https://github.com/ebadatibnbabar/SPEI-Calculation-R
- Pakistan Meteorological Department. (1992-2021). Rainfall and Temperature Data. Retrieved from https://www.pmd.gov.pk/en/
