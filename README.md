# Data Analysis Portolio Projects

## Table of Contents

1. Covid Case & Death % - USA vs World
2. Covid Testing % - USA vs World
3. Covid Vaccination vs Cases & Deaths

## 1. Covid Case & Death % - USA vs World

### Project Objective

In this project, I analyzed how USA has done in terms of controlling Covid Cases as well as Covid Deaths with respect to the World. For this purpose, I downloaded a Covid-19 dataset from the website <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a>

### Data Used

The Covid-19 data that I had downloaded contained various data on Covid Cases, Deaths, Testing and Vaccinations from January 1st, 2020 to November 21st, 2022. So I split the data into two Excel sheets - one containing the data on Cases & Deaths and another containing data on the Testing & Vaccinations.

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

From the Covid-19 dataset that was downloaded from <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a> website in Project 1, I used the Excel sheet containing data on Testing & Vaccinations.

### Data Transformations

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. The below fields were changed from null to '0':

1. total_tests
2. new_tests
3. total_tests_per_thousand
4. new_tests_per_thousand
5. positive_rate
6. tests_per_case

### Analysis

1. I used SQL Server Management Studio to extract the Covid Testing Per Million in the USA and the World, which was taken as a percentage of the population. The queries used to extract the data are available in the <a href = ""> Covid Testing Data.sql </a> file 

2. Using the data extracted in Step 1, I created a visualizations in Tableau - <a href = "https://public.tableau.com/app/profile/rahul5702/viz/ComparisonofCovidTestinginUSAandtheWorld/Dashboard1#1"> Covid Testing % - USA vs World </a>

### Insights

1. USA lies in the 1st quartile among all the countries in terms of Testing Per Million of their population to have contracted the Covid-19 virus.
2. Since the virus began to spread, the Covid Testing Per Million in the USA has consistently increased at a more rapid pace than that of the World until May 2022 and then tapered off after that before finally stopping from July onwards.

### Conclusion



## 3. Covid Vaccination vs Cases & Deaths

### Project Objective



### Data Used



### Analysis



### Insights



### Conclusion



## Project 4 (Python)

For the purpose of this project, I downloaded a Movies dataset from Kaggle from the below link:

<a href = "https://www.kaggle.com/datasets/danielgrijalvas/movies"> Movies dataset </a>

After downloading Anaconda Navigator and launching Jupyter Notebooks, I cleaned and analyzed the data using Python. The code is available in the below file:

<a href = "Project 4/Movies.ipynb"> Movies.ipynb </a>
