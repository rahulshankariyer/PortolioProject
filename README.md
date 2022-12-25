# Data Analysis - Portolio Of Projects

## I. Google Data Analytics Professional Certificate Case Study - Bike Sharing Data from Cyclistic, Chicago

## Table of Contents

1. Scenario
2. Data Used
3. Tools Used
4. Data Transformations
5. Analysis
6. Insights
7. Recommendations (Data Based)
8. Recommendations (General, not necessarily Data Based)

### 1. Scenario

I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The people who utilize the Cyclistic bike-shairng program belong to one of two categories - member riders who have an annual membership with Cyclistic and casual riders who buy single day or single ride passes to utilize the service. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, the team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, the team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations.

### 2. Data Used

<a href = "https://divvy-tripdata.s3.amazonaws.com/index.html"> This is the Original Bike Trip Data, it contains data of bike rides from the year 2013, the year of Cyclistic's founding, till the most recently concluded month. </a>

The data chosen for this analysis was for the calendar year 2021.

### 3. Tools Used

1. SQL 
2. Tableau 
3. R Programming

### 4. Data Transformations

1. Added a column named ride_length to calculate the time taken for each bike journey. 
2. Calculation of ride_length: ended_at – started_at
3. Added a column named day_of_week to mention which day of the week on which each trip happened
4. Calculation of day_of_week: WEEKDAY(started_at,1), Values range from 1-7
5. Generated Pivot tables to show the weekly stats of both the casual and member riders every month & quarter of the year 2021 – average ride lengths and number of rides

### 5. Analysis

The below visualizations were generated:

<a href = "https://public.tableau.com/app/profile/rahul5702/viz/AverageRideLengthDataofCyclisticRiders/Sheet1"> 1. Casual Rider vs Member Rider - Ride Duration on Each Day of the Week </a>

<a href = "https://cf549fb4859a40e5be50640a8c74b7e7.app.posit.cloud/file_show?path=%2Fcloud%2Fproject%2FRplot.png"> 2. Casual Rider vs Member Rider - Number of Riders on Each Day of the Week </a>

<a href = "https://docs.google.com/spreadsheets/d/1OhBve9WtBEIp4GTkylZOpdaUHK3sWIfw/edit#gid=937473705"> 3. Casual Rider vs Member Rider - Ride Duration for Each Month of the Year </a>

<a href = "https://docs.google.com/spreadsheets/d/1OhBve9WtBEIp4GTkylZOpdaUHK3sWIfw/edit#gid=1835290130"> 4. Casual Rider vs Member Rider - Number of Riders for Each Month of the Year </a>

<a href = "https://docs.google.com/spreadsheets/d/1dd3sSPWzkqgV3-gcx2ALuvmczPqu_jWo/edit#gid=1097823435"> 5. Member Riders By Bike Type </a>

<a href = "https://docs.google.com/spreadsheets/d/1Hw3X4yoWsC4sURiB8oZT_K7FXuXD4O0c/edit#gid=407787872"> 6. Casual Riders By Bike Type </a>

<a href = "https://public.tableau.com/app/profile/rahul5702/viz/Top6StartEndStationsofCasualMemberRiders/Dashboard1"> 7. Casual Rider vs Member Rider - Top 6 Start & End Stations </a>

<a href = "https://public.tableau.com/app/profile/rahul5702/viz/Top6MostPopularStationsbyBikeType/Sheet1"> 8. Top 6 Most Popular Stations by Bike Type </a>

### 6. Insights

1. Casual riders on an average, ride longer than member riders
2. The number of casual riders increased during the weekend while the number of member riders decreased during the weekend
3. The top 6 stations for the member riders are clearly in downtown Chicago while the top 6 stations for the casual riders are closer to the tourist/leisure spots.
4. The first three findings together indicate that members are generally commuters, while casual riders generally ride for leisure
5. Number of riders reached its peak during the summer, especially July and August, and tapered off during winter
6. From the data of a previous year (2019), there is a negligible number of members below the age of 16
7. There is a negligible difference between the preferences of member and casual riders in the bike type category.
8. In 13% of the rides, the riders neglected to return the bike to any station.

### 7. Recommendations (Data Based)

1. Introduce 3 new types of membership:
    (i) Weekend membership (Saturdays & Sundays)
    (ii) Summer membership (May-October)
    (iii) Weekend-Summer hybrid membership (Saturdays & Sundays and all of July & August)
2. Approach the Corporations and local businesses to enroll their employees and offer group discounts, thus increasing membership
3. Initiate a program to attract riders 16 years and below
4. Based on frequency, make sure all stations are stocked with appropriate numbers and type of bikes.

### 8. Recommendations (General, not necessarily Data Based)

1. Have a business tie up with a bank to finance annual memberships
2. Develop an App. for members only with bike availability information at each station; bike reservation valid for 30 mins. ; other membership information such as expiry date, number of rides, ride duration, etc. This will enhance membership privileges, attracting the casual rider to become a member

## II. Covid-19 Testing, Infections, Death Rates

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
    (i) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/ComparisonofCovidTestinginUSAandtheWorld/Dashboard1"> Testing % - USA vs Rest of the World </a>
    (ii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Cases"> Covid Case % - USA vs Rest of the World </a>
    (iii) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeaths/Tests_1#1"> Tests Per Case - USA vs Rest of the World </a>
    (iv) <a href = "https://public.tableau.com/app/profile/rahul5702/viz/CovidTestsCasesDeathsPart2/Deaths"> Covid Death % - USA vs Rest of the World </a>
    
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

## III. Covid Vaccination Effect On Cases & Deaths

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

The data used for the purpose of this analysis were:

1. Vaccination Data
2. Postivity Rates
3. Death Rates

Several records in the data had fields with null values which needed to be made into '0' for performing various mathematical calculations on them. So those fields were changed from null to '0'.

### 5. Analysis

1. Using SQL Server Management Studio the data of Covid Vaccinations vs Cases & Deaths by date was extracted. 
2. The queries used to extract the data are available in the <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Vaccinations%20vs%20Covid%20Cases%20%26%20Deaths.sql"> Vaccinations vs Covid Cases & Deaths.sql </a> file 
3. Using the data extracted in Step 1, I performed the following analysis in Jupyter Notebooks - <a href = "https://github.com/rahulshankariyer/PortolioProject/blob/main/Covid-19/Covid%2019%20Vaccinations%20vs%20Cases%20%26%20Deaths.ipynb"> Covid Vaccinations vs Cases & Deaths by Date & Country </a>

### 6. Insights

1. The number of people getting vaccinated steadily increased each day
2. The number of people getting infected by Covid-19 steadily decreased each day
3. The number of people getting dying from Covid-19 steadily decreased each day

### 7. Conclusion

The steady increase in Vaccinations combined with a similar decrease in Covid-19 Infections & Deaths suggests that the vaccines are indeed proving effective in countering the Covid-19 Pandemic.

## IV. Final Year Project 2018-2019 - Application of Discriminant Analysis for Predicting Medical Diagnosis in Decision Support System 

## Table of Contents

1. Project Objective
2. Data Source
3. Data Used
4. Tools Used
5. Analysis
6. Conclusion
7. Note

### 1. Project Objective

To test the Prediction Accuracy of various Hybrid versions of the KNN, LDA & QDA algorithms and compare them with their original versions

### 2. Data Source

UCI Repository

### 3. Data Used

In this project, 20 clinical attributes for Diabetes, 9 clinical attributes for Cancer and 23 for Herbal Plants were used to predict their medical diagnosis.

### 4. Tools Used

MATLAB

### 5. Analysis

Using MATLAB, the below hybrid versions of the KNN and Discriminant Analysis algorithms (listed below) were applied

    (i) KNN
    (ii) LDA
    (iii) QDA
    (iv) KNN LDA
    (v) KNN QDA
    (vi) FUZZY KNN
    (vii) FUZZY KNN LDA
    (viii) FUZZY KNN QDA
    (ix) ROUGH FUZZY KNN
    (x) ROUGH FUZZY KNN LDA
    (xi) ROUGH FUZZY KNN QDA
    (xii) CONDENSED KNN
    (xiii) CONDENSED KNN LDA
    (xiv) CONDENSED KNN QDA
    (xv) CONSTRAINED KNN
    (xvi) CONSTRAINED KNN LDA
    (xvii) CONSTRAINED KNN QDA

Predictions using each of the above were crried out and their accuracy was also computed. In the below link, you can find the MATLAB code for some of the algorithms as well as the code computing their accuracies
<a href = "https://drive.google.com/drive/u/1/folders/1tp8c3_aBg_hUBim1z_FULS77ZPsfItv5"> KNN, Discriminant Analysis and their Hybrids in MATLAB </a>

### 6. Conclusions
•	For all the three data sets used above, Diabetes, Cancer and Herbal Plants, the KNN LDA, KNN QDA, Condensed KNN LDA, Condensed KNN QDA, Fuzzy KNN LDA, Fuzzy KNN QDA, Constrained Fuzzy KNN LDA, Constrained Fuzzy KNN QDA, Rough Fuzzy KNN LDA and Rough Fuzzy KNN QDA showed a better performance than KNN, Condensed KNN, Constrained KNN and Rough Fuzzy KNN. 
•	From the cancer data set it is found that the accuracy performance of LDA and QDA with respect to Condensed, Fuzzy, Constrained Fuzzy and Rough Fuzzy were high. Also accuracy of QDA on Condensed Fuzzy, Constrained Fuzzy, and Rough Fuzzy over whelmed the accuracy with respect to LDA and hence can be concluded that the use of KNN QDA on Condensed Fuzzy, Constrained Fuzzy and Rough Fuzzy is preferable.  
•	The prediction for diabetes using various algorithms was around 77% and can be improved by using few boosting techniques or by increasing the number of samples. So the computer based decision support systems can be used based on Fuzzy KNN- LDA, Fuzzy KNN- QDA, KNN-LDA and KNN -QDA so as to reduce cost and errors in clinical trials. 
•	In the herbal plants data set, we find the LDA to be more effective than QDA with respect to ordinary KNN as well as with respect to Constrained Fuzzy. With respect to Fuzzy, Rough Fuzzy and Condensed Fuzzy, LDA and QDA are equally effective with higher accuracy in Rough Fuzzy than in Fuzzy and Condensed Fuzzy.

### 7. Note

I had prepared the below slides for my Final Year Project Review in MSc Mathematics. These slides contain the detailed workings of each of the algorithms as well as their accuracies
<a href = "https://docs.google.com/presentation/d/10_1gMlXmtsN2yXt4Mf8IGrdLbQecxlNh/edit#slide=id.p1"> MSc Mathematics Final Year Project Review </a>
Further background behind this project is given in the thesis in the PDF in the link below which I submitted for my Degree in MSc Mathematics
<a href = "https://drive.google.com/drive/u/1/folders/1omvJKv7-dhtRXLOzdkoWOoOuNUG3nXsA"> HYBRID K-NEAREST NEIGHBOUR AND DISCRIMINANT ANALYSIS FOR PREDICTING MEDICAL DIAGNOSIS IN DECISION SUPPORT SYSTEM </a>

