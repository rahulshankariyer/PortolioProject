# Data Analysis Portolio Projects

## Table of Contents

1. Covid Case & Death % - USA vs World
2. Covid Testing % - USA vs World
3. Covid Vaccination vs Cases & Deaths

## 1. Covid Case & Death % - USA vs World

### Project Objective

In this project, I analyzed how USA has done in terms of controlling Covid Cases as well as Covid Deaths with respect to the World. For this purpose, I downloaded a Covid-19 dataset from the website <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a>

### Data Used

The Covid-19 data that I had downloaded contained various data on Covid Cases, Deaths, Testing and Vaccinations from January 1st, 2020 to November 21st, 2022. So I split the data into two Excel sheets - 

<a href = "https://docs.google.com/spreadsheets/d/1CjLnLv_ut9UO1hZPHKjjKm4udFNUBc8z/edit#gid=1391408898"> Excel Sheet #1: Covid Cases & Deaths </a>

<a href = "https://docs.google.com/spreadsheets/d/1tbjElTWQUju5wL6IIH2W14F-32-lJ8n5/edit?usp=share_link&ouid=106525515537823506540&rtpof=true&sd=true"> Excel Sheet #2: Covid Testing & Vaccinations </a>

For the purpose of the above project, we will be using the <a href = "https://docs.google.com/spreadsheets/d/1CjLnLv_ut9UO1hZPHKjjKm4udFNUBc8z/edit#gid=1391408898"> Covid Cases & Deaths </a> dataset

### Analysis

1. I used SQL Server Management Studio to extract the Covid Case % & Death % in the USA and the World. The Covid Case % was taken as a percentage of the population and the Covid Death % was taken as a percentage of those who tested positive for Covid. The queries used to extract the data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%20Cases%20-%20USA%20vs%20Rest%20of%20the%20World.sql"> Covid Cases - USA vs Rest of the World.sql </a> file 

2. Using the data extracted in Step 1, I created a visualizations in Tableau - 
    (i) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/ComparisonofCovidCasesDeathsinUSAvstheWorldDataFromJan12020tillNovember212022/Dashboard1"> Covid Case % - USA vs World </a>
    (ii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/ComparisonofCovidCasesDeathsinUSAvstheWorldDataFromJan12020tillNovember212022/Dashboard2"> Covid Death % - USA vs World </a>
    
### Insights

From the above data, I gather the following insights:

1. USA lies in the 3rd quartile among all the countries in terms of the percentage of their population to have contracted the Covid-19 virus.
2. Since the virus began to spread, the percentage of Covid Cases in the USA has consistently increased at a more rapid pace than that of the World. 
3. USA lies in the 3rd quartile among all the countries in terms of the percentage of deaths among those who contracted the Covid-19 virus.
4. Since the virus began to spread, the percentage of Covid Deaths in the USA has overall increased and decreased at a similar rate with that of the world, sometimes going above and sometimes going below.

### Conclusion

The fact that 29.07% of the US population has contracted the virus while only 1.097% from those have died from it shows that while the US couldn't control the spread of the virus very well, they were able to control the death rate better than most other countries in the world.

## 2. Covid Testing % - USA vs World

### Project Objective

Here, I analyzed how USA has done in terms of controlling Covid Testing with respect to the World. 

### Data Used

From the Covid-19 dataset that was downloaded from <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a> website in Project 1, I used the <a href = "https://docs.google.com/spreadsheets/d/1tbjElTWQUju5wL6IIH2W14F-32-lJ8n5/edit?usp=share_link&ouid=106525515537823506540&rtpof=true&sd=true"> Excel Sheet #2: Covid Testing & Vaccinations </a> dataset

### Data Transformations

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. The below fields were changed from null to '0':

1. total_tests
2. new_tests
3. total_tests_per_thousand
4. new_tests_per_thousand
5. positive_rate
6. tests_per_case

### Analysis

1. I used SQL Server Management Studio to extract the Covid Testing % in the USA and the World, which was taken as a percentage of the population. The queries used to extract the data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%20Testing%20Data.sql"> Covid Testing Data.sql </a> file 

2. Using the data extracted in Step 1, I created a visualization in Tableau - <a href = "https://public.tableau.com/app/profile/rahul5702/viz/ComparisonofCovidTestinginUSAandtheWorld/Dashboard1#1"> Covid Testing % - USA vs World </a>

### Insights

1. USA lies in the 1st quartile among all the countries in terms of Testing Per Million of their population to have contracted the Covid-19 virus.
2. Since the virus began to spread, the Covid Testing Per Million in the USA has consistently increased at a more rapid pace than that of the World until May 2022 and then tapered off after that before finally stopping from July onwards.

### Conclusion

The fact that USA had a Testing % of 270%, more than most countries in the world, indicates that they were able to perform testing on a large % of their population multiple times. Although there are a lot of countries who have done so, USA has still done a better job than most other nations in getting people tested. 

## 3. Covid Vaccination vs Cases & Deaths

### Project Objective

Here, I tried to find the correlation between the Covid Vaccinations and its correlation with Covid Deaths and Covid Cases.

### Data Used

Just like for analyzing the Testing data, here too I used the <a href = "https://docs.google.com/spreadsheets/d/1tbjElTWQUju5wL6IIH2W14F-32-lJ8n5/edit?usp=share_link&ouid=106525515537823506540&rtpof=true&sd=true"> Excel Sheet #2: Covid Testing & Vaccinations </a> dataset

### Data Transformations

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. So those fields were changed from null to '0'.

### Analysis

1. I used SQL Server Management Studio to extract the data of Covid Vaccinations vs Cases & Deaths by both date & country. The queries used to extract the data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Vaccinations%20vs%20Covid%20Cases%20%26%20Deaths.sql"> Vaccinations vs Covid Cases & Deaths.sql </a> file 

2. Using the data extracted in Step 1, I performed the following analysis in Jupyter Notebooks - <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%2019%20Vaccinations%20vs%20Cases%20%26%20Deaths.ipynb"> Covid Vaccinations vs Cases & Deaths by Date & Country </a>

### Insights

1. When we look at country wise data, the vaccinations have an equally high correlation with both cases and deaths
2. When we look at date wise data, the vaccinations have a slightly higher correlation with cases than with deaths
3. Vacccinations have a much higher correlation with both cases and deaths when looked at country wise than when looked at date wise

### Conclusion

Whether compared by country or date, one can infer that the Number of Covid Vaccinations is directly proportional to the Number of Cases & Deaths

## Project 4 (Python)

For the purpose of this project, I downloaded a Movies dataset from Kaggle from the below link:

<a href = "https://www.kaggle.com/datasets/danielgrijalvas/movies"> Movies dataset </a>

After downloading Anaconda Navigator and launching Jupyter Notebooks, I cleaned and analyzed the data using Python. The code is available in the below file:

<a href = "Project 4/Movies.ipynb"> Movies.ipynb </a>
