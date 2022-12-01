select * from ProjectPortfolio..[Covid Deaths] order by 3,4;
select * from ProjectPortfolio..[Covid Vaccinations];

select location,date,total_cases,new_cases,total_deaths,population 
from ProjectPortfolio..[Covid Deaths];

--Death % among covid cases each day - all countries

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from ProjectPortfolio..[Covid Deaths];

--Death % among covid cases each day - USA

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from ProjectPortfolio..[Covid Deaths] 
where location = 'United States';

--Death % among covid cases each day - India

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage 
from ProjectPortfolio..[Covid Deaths] 
where location = 'India';

--Covid case % among population each day - USA

select location,date,total_cases,population,(total_cases/population)*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where location = 'United States'
order by 2;

--Covid case % among population each day - India

select location,date,total_cases,population,(total_cases/population)*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where location = 'India'
order by 2;

--Highest % of covid cases among the population in each country in a single day

select location,population,max(cast(total_cases as int)) as highest_infection_count,max((total_cases/population))*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population 
order by covid_case_percentage desc;

--% of covid cases among the population of each country each day in descending order

select location,population,date,max(cast(total_cases as int)) as highest_infection_count,max((total_cases/population))*100 as covid_case_percentage 
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location,population,date 
order by covid_case_percentage desc;

--Total death count of each country

select location,max(cast(total_deaths as int)) as total_death_count
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by location 
order by total_death_count desc;

--select * from ProjectPortfolio..[Covid Deaths] 
--where continent is not null 
--order by 3,4;

--select location,max(cast(total_deaths as int)) as total_death_count
--from ProjectPortfolio..[Covid Deaths] 
--where continent is null 
--group by location 
--order by total_death_count desc;

--Total death count of each continent

select location,sum(cast(total_deaths as int)) as total_death_count
from ProjectPortfolio..[Covid Deaths] 
where continent is null and location in ('Europe','North America','South America','Asia','Africa','Oceania')
group by location 
order by total_death_count desc;

--Total covid cases, deaths and death % across the world each day

select date,sum(new_cases) as total_new_cases,sum(cast(new_deaths as int)) as total_deaths, (sum(cast(new_deaths as int))/sum(new_cases))*100 as death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
group by date
order by date;

--Total covid cases, deaths and death % across the world overall

select sum(new_cases) as total_new_cases,sum(cast(new_deaths as int)) as total_deaths, (sum(cast(new_deaths as int))/sum(new_cases))*100 as death_percentage
from ProjectPortfolio..[Covid Deaths] 
where continent is not null 
order by 1,2;

--Population vs Vaccinations

select d.continent,d.location,d.date,d.population,v.new_vaccinations,
sum(cast(v.new_vaccinations as int)) over (partition by d.location order by d.location,d.date) as rolling_people_vaccinated
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
order by 2,3;

with PopulationVsVaccine (continent,location,date,population,new_vaccinations,rolling_people_vaccinated)
as
(
select d.continent,d.location,d.date,d.population,v.new_vaccinations,
sum(convert(int,v.new_vaccinations)) over (partition by d.location order by d.location,d.date) as rolling_people_vaccinated
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
)
select *,(rolling_people_vaccinated/population)*100 as vaccination_percentage
from PopulationVsVaccine;

create table PercentPopulationVaccinated
(
continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
rolling_people_vaccinated numeric,
)

insert into PercentPopulationVaccinated
select d.continent,d.location,d.date,d.population,v.new_vaccinations,
sum(convert(int,v.new_vaccinations)) over (partition by d.location order by d.location,d.date) as rolling_people_vaccinated
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null;

select *,(rolling_people_vaccinated/population)*100 as vaccination_percentage
from PercentPopulationVaccinated;

create view PercPopulationVaccinated as
select d.continent,d.location,d.date,d.population,v.new_vaccinations,
sum(convert(int,v.new_vaccinations)) over (partition by d.location order by d.location,d.date) as rolling_people_vaccinated
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null;