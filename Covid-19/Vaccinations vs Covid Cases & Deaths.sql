select * from ProjectPortfolio..[Covid Vaccinations] order by 3,4;

select location as country,date,total_tests,new_tests,total_tests_per_thousand,positive_rate,tests_per_case
from ProjectPortfolio..[Covid Vaccinations] 
where continent is not null
order by 1,2;

select d.location,d.date,d.total_cases,v.total_tests,d.new_cases,v.new_tests
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
order by 1,2;

update ProjectPortfolio..[Covid Vaccinations]
set total_tests = '0'
where total_tests is null;

update ProjectPortfolio..[Covid Vaccinations]
set new_tests = '0'
where new_tests is null;

update ProjectPortfolio..[Covid Vaccinations]
set total_tests_per_thousand = '0'
where total_tests_per_thousand is null;

update ProjectPortfolio..[Covid Vaccinations]
set new_tests_per_thousand = '0'
where new_tests_per_thousand is null;

update ProjectPortfolio..[Covid Vaccinations]
set positive_rate = '0'
where positive_rate is null;

update ProjectPortfolio..[Covid Vaccinations]
set tests_per_case = '0'
where tests_per_case is null;

---------------------------------------------------------------------------------------------------------------------------------------------

--Global Covid Cases and Tests

with TestsvsCases (new_cases,new_tests)
as
(
select isnull(d.new_cases,'0'),isnull(v.new_tests,'0')
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null and d.new_cases is not null and v.new_tests is not null
)
select sum(cast(new_cases as float)) as global_cases,
sum(cast(new_tests as float)) as global_tests,
(sum(cast(new_tests as float))/sum(cast(new_cases as float)))*100 as tests_per_case
from TestsvsCases;

--Global Population

with PopulationvsTests (country,population)
as
(
select location,avg(population) as population
from ProjectPortfolio..[Covid Deaths]
where continent is not null
group by location
)
select sum(population) as global_population
from PopulationvsTests;

--Average Testing per million of each country in the world

select location,avg(cast(new_tests_per_thousand as float))*1000 as avg_tests_per_million
from ProjectPortfolio..[Covid Vaccinations]
group by location
order by location;

--Testing per million of the World each day

with TestsByDate (country,date,new_tests,new_tests_per_thousand,thousands)
as
(
select location,date,
cast(new_tests as float) as new_tests,
cast(new_tests_per_thousand as float) as new_tests_per_thousand,
case when cast(new_tests_per_thousand as float) = '0' then 0
else (cast(new_tests as float))/cast(new_tests_per_thousand as float)
end 
as thousands
from ProjectPortfolio..[Covid Vaccinations]
where continent is not null
)
select date,
case when sum(thousands) = 0 then 0
else (sum(cast(new_tests as float))/sum(thousands))*1000 
end
as new_tests_per_million
from TestsByDate
group by date
order by date;

--Testing per million of USA each day

select location,date,cast(total_tests_per_thousand as float)*1000 as total_tests_per_million
from ProjectPortfolio..[Covid Vaccinations]
where location = 'United States'
order by date;

--Vaccinations against Covid Cases and Deaths by date

select d.date,sum(cast(d.total_cases as float)) as total_cases,
sum(cast(d.total_deaths as float)) as total_deaths,
sum(cast(v.total_vaccinations as float)) as total_vaccinations
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
group by d.date
order by d.date;

--Vaccinations against Covid Cases and Deaths by country

select d.location as country,
sum(cast(d.new_cases as float)) as new_cases,
sum(cast(d.new_deaths as float)) as new_deaths,
sum(cast(v.new_vaccinations as float)) as new_vaccinations
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
group by d.location
order by d.location;