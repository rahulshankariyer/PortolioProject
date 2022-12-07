--Total covid cases, deaths and death % across the world overall

select sum(new_cases) as total_new_cases,sum(cast(new_deaths as int)) as total_deaths, (sum(cast(new_deaths as int))/sum(new_cases))*100 as death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null
order by 1,2;

--Total death count of each continent

select continent,sum(cast(new_deaths as int)) as total_death_count
from ProjectPortfolio..[Covid Deaths] 
where continent is not null
group by continent 
order by total_death_count desc;

--Highest % of covid cases among the population in each country in a single day

select location,population,max(cast(total_cases as int)) as highest_infection_count,max((total_cases/population))*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population 
order by covid_case_percentage desc;

--% of covid cases among the population of each country each day in descending order

select location,population,date,total_cases,(total_cases/population)*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
order by covid_case_percentage desc;