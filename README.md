# Data Analysis Portolio Projects

## Project 1 (SQL)

For the purpose of the above project, I downloaded a Covid-19 dataset from the below website:

<a href = "https://ourworldindata.org/covid-deaths"> Our World in Data </a>

After downloading SQL Server and SQL Management Studio into the system, I extracted data from the Covid 19 dataset as a table in SQL Management Studio and then used it to gather the following insights using the queries given in the below SQL file:

1. Death % among covid cases each day - all countries
2. Death % among covid cases each day - USA
3. Death % among covid cases each day - India
4. Covid case % among population each day - USA
5. Covid case % among population each day - India
6. Highest % of covid cases among the population in each country in a single day
7. Percentage of covid cases among the population of each country each day in descending order
8. Total death count of each country
9. Total death count of each continent
10. Total covid cases, deaths and death % across the world each day
11. Total covid cases, deaths and death % across the world overall
12. Population vs Vaccinations

<a href = "Project 1/Covid19.sql"> Covid19.sql </a>

## Project 2 (Tableau)

From the table that I had created in SQL Management Studio in Project 1, I created 4 excel sheets, each containing the below data:

1. World Death Percentage Among New Covid Cases
2. Continent Wise Death Count
3. Country wise Covid Case Percentage
4. Country & Date wise Covid Case Percentage

Using the above, I created a Tableau Dashboard, which can be found in the link below:

<a href = "https://public.tableau.com/app/profile/rahul5702/viz/Covid19_16693640120540/Dashboard1"> Covid19 Dashboard </a>

## Project 3 (SQL Data Cleaning)

For the purpose of this project, I downloaded a Nashville Housing dataset from the below github repository:

<a href = "https://github.com/AlexTheAnalyst/PortfolioProjects"> Nashville Housing Dataset </a>

Just like in Project 1, imported the data into Microsoft SQL Server Management Studio. I then performed data cleaning using the following steps as shown in the queries in the below SQL file:

1. Converting SaleDate field to the datatype 'date'
2. Populating the Property Address data by using self join and removing the nulls
3. Splitting PropertyAddress field into Address and City fields
4. Splitting OwnerAddress field into OwnerSplitAddress, OwnerSplitCity & OwnerSplitState fields
5. Changing SoldAsVacant field values from 'Y' to 'Yes' and from 'N' to 'No'
6. Removing duplicate rows
7. Removing unused columns

<a href = "Project 3/Nashville Housing.sql"> Nashville Housing.sql </a>

## Project 4 (Python)

For the purpose of this project, I downloaded a Movies dataset from Kaggle from the below link:

<a href = "https://www.kaggle.com/datasets/danielgrijalvas/movies"> Movies dataset </a>

After downloading Anaconda Navigator and launching Jupyter Notebooks, I cleaned and analyzed the data using Python. The code is available in the below file:

<a href = "Project 4/Movies.ipynb"> Movies.ipynb </a>
