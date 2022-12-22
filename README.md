# Data Analysis Portolio Projects

## Table of Contents

1. Tests Per Case, Covid Case & Death % - USA vs Rest of World
2. Covid Vaccination vs Cases & Deaths

## 1. Tests Per Case, Covid Case & Death % - USA vs Rest of World

### Project Objective

In this project, I analyzed how USA has done in terms of Covid Testing and Controlling Covid Cases & Deaths compared to the Rest of the World. For this purpose, I downloaded a Covid-19 dataset from the website <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a>

### Data Used

The Covid-19 data that I had downloaded contained various data on Covid Cases, Deaths, Testing and Vaccinations from January 1st, 2020 to November 21st, 2022. So I split the data into two Excel sheets - 

<a href = "https://docs.google.com/spreadsheets/d/1CjLnLv_ut9UO1hZPHKjjKm4udFNUBc8z/edit#gid=1391408898"> Excel Sheet #1: Covid Cases & Deaths </a>

<a href = "https://docs.google.com/spreadsheets/d/1tbjElTWQUju5wL6IIH2W14F-32-lJ8n5/edit?usp=share_link&ouid=106525515537823506540&rtpof=true&sd=true"> Excel Sheet #2: Covid Testing & Vaccinations </a>

### Tools Used

1. Excel
2. Microsoft SQL Server Management Studio
3. Tableau

### Data Transformations

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. Most of these null values were in January and February 2020. The below fields were changed from null to '0':

1. total_cases
2. new_cases
3. total_deaths
4. new_deaths
5. total_tests
6. new_tests
7. total_tests_per_thousand
8. new_tests_per_thousand
9. positive_rate
10. tests_per_case

### Analysis

1. I used SQL Server Management Studio to extract the Tests Per Case, Covid Case % & Death % which denote:

    (i) Tests Per Case - Average Number of Tests Conducted to Detect a Positive Covid Case
    (ii) Covid Case % - Percentage of the Population to have Contracted Covid
    (iii) Covid Death % - Percentage of Deaths Among Those Who Contracted Covid

2. The queries used to extract the above data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%20Testing%2C%20Cases%20%26%20Deaths.sql"> Covid Testing, Cases & Deaths.sql </a> file 

3. Using the data extracted in Step 2, I created 3 visualizations in Tableau - 
    (i) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Tests_1#1"> Tests Per Case - USA vs Rest of the World </a>
    (ii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Cases"> Covid Case % - USA vs Rest of the World </a>
    (iii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeathsPart2/Deaths"> Covid Death % - USA vs Rest of the World </a>
    
### Insights

From the above data, I gather the following insights:

1. USA ranks #81 in the world among 236 nations when it comes to the Number of Tests Per Case and is among 160 nations in the World to have less than 10 Tests Per Case.
2. During the period that the Testing was carried out, USA consistently had more Tests Per Case than the Rest of the World Combined except for a couple of months each in mid 2020 and early 2022.
3. USA lies in the 3rd quartile among all the countries in terms of the percentage of their population to have contracted the Covid-19 virus.
4. Since the virus began to spread, the percentage of Covid Cases in the USA has consistently increased at a more rapid pace than that of the Rest of the World. 
5. USA lies in the 3rd quartile among all the countries in terms of the percentage of deaths among those who contracted the Covid-19 virus.
6. Since the virus began to spread, the percentage of Covid Deaths in the USA has overall increased and decreased at a similar rate with that of the Rest of the world, sometimes going above and sometimes going below.

### Conclusions

1. The fact that USA had detected 9.28 Tests Per Case while 29.07% of them actually caught the virus implies that the USA could only detect roughly one third of all Covid Cases, meaning that among the other two thirds, people either didn't get tested or were asymptomatic and tested negative.
2. The fact that 29.07% of the US population has contracted the virus while only 1.097% from those have died from it shows that while the US couldn't control the spread of the virus very well, they were able to control the death rate better than most other countries in the world.

## 2. Covid Vaccination vs Cases & Deaths

### Project Objective

Here, I tried to find the correlation between the Covid Vaccinations and its correlation with Covid Deaths and Covid Cases.

### Data Used

For this project, here too I used only the <a href = "https://docs.google.com/spreadsheets/d/1tbjElTWQUju5wL6IIH2W14F-32-lJ8n5/edit?usp=share_link&ouid=106525515537823506540&rtpof=true&sd=true"> Excel Sheet #2: Covid Testing & Vaccinations </a> dataset, which was also used in Project 1.

### Tools Used

1. Excel
2. Microsoft SQL Server Management Studio
3. Tableau

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

Whether compared by country or date, one can infer that the Number of Covid Vaccinations is directly proportional to the Number of Cases & Deaths, ie, the Number of Covid Vaccinations increases with the Number of Cases & Deaths

## Project 4 (Python)

For the purpose of this project, I downloaded a Movies dataset from Kaggle from the below link:

<a href = "https://www.kaggle.com/datasets/danielgrijalvas/movies"> Movies dataset </a>

After downloading Anaconda Navigator and launching Jupyter Notebooks, I cleaned and analyzed the data using Python. The code is available in the below file:

<a href = "Project 4/Movies.ipynb"> Movies.ipynb </a>
