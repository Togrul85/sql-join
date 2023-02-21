CREATE DATABASE P345

USE P345

CREATE TABLE Cities(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Population decimal(18,2),
Area decimal(18,2),
CountryId int references Cities	(Id)
)
--inner join
select c.Name 'CityName', c.population 'CityPopulation',c.Area,cn.Name'CountryName' from Cities c 
 join Countries cn
ON 
c.CountryId =cn.Id

--left join 

select * from Cities c 
  left join Countries cn
ON 
c.CountryId =cn.Id



--right join

select c.Name 'CityName', c.population 'CityPopulation',c.Area,cn.Name'CountryName' from Cities c 
right join Countries cn
ON 
c.CountryId =cn.Id


--full outer

select c.Name 'CityName', c.population 'CityPopulation',c.Area,cn.Name'CountryName' from Cities c 
 full outer join Countries cn
ON 
c.CountryId =cn.Id























