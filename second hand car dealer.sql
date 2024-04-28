create schema cars;
use cars;
-- READ DATA--
select*from car_dekho;
-- Total Cars: to get a count of total records --
select count(*) from car_dekho;
-- How many cars will be available in 2023 --
select count(*) from car_dekho where year = 2023;
-- how many cars will be availabe in 2020,2021,2022 --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- print the total cars by year --
select year, count(*) from car_dekho group by year;
-- how many diesel cars are there in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- how many petrol cars are there in 2020 ? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
 -- combine total all fuel cars of all years --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
 -- in which year there were more then 100 cars ? --
select year, count(*) from car_dekho group by year having count(*)>100;
-- total cars count from 2015 to 2023 --
select year, count(*) from car_dekho where year in (2015,2016,2017,2018,2019,2020,2021,2022,2023) group by year;
-- total cars count between 2015 to 2023 --
select count(*) from car_dekho where year between 2015 and 2023;
-- all cars details between 2015 to 2023 complete list --
select * from car_dekho where year between 2015 and 2023;