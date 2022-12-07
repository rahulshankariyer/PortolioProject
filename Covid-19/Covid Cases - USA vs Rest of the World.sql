--Total covid cases, deaths, covid case %, and death % across the world overall

create table CovidCasesandDeaths
(
location nvarchar(255),
population numeric,
cases numeric,
covid_case_percentage numeric,
deaths numeric,
covid_death_percentage numeric
)

insert into CovidCasesandDeaths
select location,population,
max(cast(total_cases as int)) as covid_cases,
max((total_cases/population))*100 as covid_case_percentage, 
max(cast(total_deaths as int)) as covid_deaths,
max((total_deaths/total_cases))*100 as covid_death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population;
--order by covid_case_percentage desc;

select sum(population) as global_population,
sum(cases) as global_cases,
(sum(cases)/sum(population))*100 as global_covid_case_percentage,
sum(deaths) as global_deaths,
(sum(deaths)/sum(cases))*100 as global_covid_death_percentage
from CovidCasesandDeaths;

--Percentage of covid cases among the population in each country overall

select location as country,population,
max(cast(total_cases as int)) as total_cases,max((total_cases/population))*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population 
order by covid_case_percentage desc;

--% of covid cases among the population of the world each day in descending order

with Covid (location,population,date,cases,case_percentage)
as
(
select location,population,date,max(cast(total_cases as int)) as highest_infection_count,max((total_cases/population))*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population,date
--order by covid_case_percentage desc
)
select sum(population) as global_population,date,sum(cases) as global_cases,(sum(cases)/sum(population))*100 as global_percentage
from Covid
group by date
order by date;

--% of covid cases among the US population each day in descending order

select location,population,date,total_cases,(total_cases/population)*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null and location = 'United States'
order by date;

--Total death % of each country

select location as country,
max(total_cases) as total_covid_cases,
max(total_deaths) as total_death_count,
(max(total_deaths)/max(total_cases))*100 as death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location
order by total_death_count desc;

--Total covid cases, deaths and death % across the world each day

select date,sum(new_cases) as total_new_cases,
sum(cast(new_deaths as int)) as total_deaths, 
(sum(cast(new_deaths as int))/sum(new_cases))*100 as death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by date
order by date;

--Death % among covid cases each day - USA

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from ProjectPortfolio..[Covid Deaths] 
where location = 'United States'
order by date;