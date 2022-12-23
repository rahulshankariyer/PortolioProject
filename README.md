# Data Analysis - Portolio Of Projects

## I. Covid-19 Testing, Infections, Death Rates

## Table of Contents

1. Project Objective
2. Data Used
3. Tools Used
4. Data Transformations
5. Analysis
6. Insights
7. Conclusions

### 1. Project Objective

In this project, an analysis was made on how USA has done in terms of Covid Testing and Controlling Covid Cases & Deaths compared to the Rest of the World. 

### 2. Data Used

For this purpose, a Covid-19 dataset from the website <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a> was used. This dataset contained various data on Covid Cases, Deaths, Testing and Vaccinations. The period chosen was January 1st, 2020 to November 21st, 2022. 

### 3. Tools Used

1. Excel
2. Microsoft SQL Server Management Studio
3. Tableau

### 4. Data Transformations

The data used for the purpose of this analysis were:

1. Testing for Infections
2. Postivity Rates
3. Death Rates

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

### 5. Analysis

1. Using SQL Server Management Studio, the following were extracted:

    (i) Testing % - Percentage of the Population Tested for Covid
    (ii) Covid Case % - Percentage of the Population to have Contracted Covid
    (iii) Covid Positivity % - Percentage of Infections Among Those Who were Tested
    (iv) Covid Death % - Percentage of Deaths Among Those Who Contracted Covid

2. The queries used to extract the above data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%20Testing%2C%20Cases%20%26%20Deaths.sql"> Covid Testing, Cases & Deaths.sql </a> file 

3. Using the data extracted in Step 2, 3 visualizations were created in Tableau - 
    (i) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Tests_1#1"> Tests Per Case - USA vs Rest of the World </a>
    (ii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Cases"> Covid Case % - USA vs Rest of the World </a>
    (iii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeathsPart2/Deaths"> Covid Death % - USA vs Rest of the World </a>
    
### 6. Insights

From the above data, the following insights were gathered:

1. USA ranks #81 in the World in Covid Positive Rate, with 10.77%. The Rest of the World comes in with 12.94% in comparison.
2. During the period that the Testing was carried out, USA consistently had more Tests Per Case than the Rest of the World Combined except for a couple of months each in mid 2020 and early 2022.
3. USA ranks #24 in the World in Testing % of the Population, with 270% of the population tested. The Rest of the World comes in with 183% in comparison.
4. Since the virus began to spread, USA has consistently tested a higher percentage of its population than the Rest of the World has from March 2020 through to July 2022.
5. USA ranks #57 in the World in Covid % of the Population, with 29.07% contracting the virus. The Rest of the World comes in with 7% in comparison.
5. Since the virus began to spread, the percentage of Covid Cases in the USA has consistently increased at a more rapid pace than that of the Rest of the World. 
6. USA ranks #24 in the World in Death % among Covid Positive Cases, with 1.02% of them dying of the virus. The Rest of the World comes in with 1.03% in comparison.
7. Since the virus began to spread, the percentage of Covid Deaths in the USA has overall increased and decreased at a similar rate with that of the Rest of the world, sometimes going above and sometimes going below.

### 7. Conclusions

1. USA was more efficient than the Rest of the World in Testing & detecting Covid Positive Cases.
2. USA couldn't control the spread of the virus very well, but they were able to control the death rate better than most other countries in the world.

## II. Covid Vaccination Effect On Cases & Deaths

## Table of Contents

1. Project Objective
2. Data Used
3. Tools Used
4. Data Transformations
5. Analysis
6. Insights
7. Conclusions

### 1. Project Objective

In this project, an analysis was done on whether the Covid Vaccinations led to a decline in Covid-19.

### 2. Data Used

For this purpose, a Covid-19 dataset from the website <a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a> was used. This dataset contained various data on Covid Cases, Deaths, Testing and Vaccinations. The period chosen was January 1st, 2020 to November 21st, 2022. 

### 3. Tools Used

1. Excel
2. Microsoft SQL Server Management Studio
3. Tableau

### 4. Data Transformations

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. So those fields were changed from null to '0'.

### 5. Analysis

1. I used SQL Server Management Studio to extract the data of Covid Vaccinations vs Cases & Deaths by both date & country. The queries used to extract the data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Vaccinations%20vs%20Covid%20Cases%20%26%20Deaths.sql"> Vaccinations vs Covid Cases & Deaths.sql </a> file 

2. Using the data extracted in Step 1, I performed the following analysis in Jupyter Notebooks - <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%2019%20Vaccinations%20vs%20Cases%20%26%20Deaths.ipynb"> Covid Vaccinations vs Cases & Deaths by Date & Country </a>

### 6. Insights

1. When we look at country wise data, the vaccinations have an equally high correlation with both cases and deaths
2. When we look at date wise data, the vaccinations have a slightly higher correlation with cases than with deaths
3. Vacccinations have a much higher correlation with both cases and deaths when looked at country wise than when looked at date wise

### 7. Conclusion

Whether compared by country or date, one can infer that the Number of Covid Vaccinations is directly proportional to the Number of Cases & Deaths, ie, the Number of Covid Vaccinations increases with the Number of Cases & Deaths

## III. Project 4 (Python)

For the purpose of this project, I downloaded a Movies dataset from Kaggle from the below link:

<a href = "https://www.kaggle.com/datasets/danielgrijalvas/movies"> Movies dataset </a>

After downloading Anaconda Navigator and launching Jupyter Notebooks, I cleaned and analyzed the data using Python. The code is available in the below file:

<a href = "Project 4/Movies.ipynb"> Movies.ipynb </a>
