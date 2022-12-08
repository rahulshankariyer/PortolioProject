select * from ProjectPortfolio..[Covid Vaccinations] order by 3,4;

--Cleaning

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

--Average Testing % of each country in the world

select d.location,avg(d.population) as population,sum(cast(v.new_tests as float)) as new_tests,
case
when avg(d.population) = 0 then 0
else (sum(cast(v.new_tests as float))/avg(d.population))*100
end
as testing_percentage
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
group by d.location,d.population
order by 1;

--Testing per million of the World each day

with TestsByDate (country,date,population,total_tests)
as
(
select d.location,d.date,d.population,v.total_tests
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.continent is not null
)
select date,sum(population) as population,sum(cast(total_tests as float)) as total_tests,
case
when sum(population) = 0 then 0
else (sum(cast(total_tests as float))/sum(population))*100 
end
as testing_percentage
from TestsByDate
group by date
order by date;

--Testing % of USA each day

select d.location,d.date,d.population,v.total_tests,
(cast(v.total_tests as float)/d.population)*100 as testing_percentage
from ProjectPortfolio..[Covid Deaths] d join ProjectPortfolio..[Covid Vaccinations] v
on d.location = v.location and d.date = v.date
where d.location = 'United States'
order by d.date;