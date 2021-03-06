



-- president table
drop table if exists president
;
create temp table president(
  country_name varchar(10),
  president_name varchar(30),
  president_gender varchar(10),
  president_age int,
  party varchar(50),
  job_started Date,
  job_ended Date
)
;

insert into president
values
('USA','Trump','male',15, '2017-05-20','2030-02-05'),
('India','Modi','male',65, '2010-07-11','2017-09-04'),
('Uganda','Alex','male',46, '2017-05-20','2030-03-31'),
('Indonesia','Larry','male',49, '2010-07-11','2017-09-12'),
('England','Trump','male',54, '2019-05-20','2030-03-24'),
('Canada','Justin','male',23, '2000-07-11','2017-09-02'),
('Bangladesh','Hasina','female',25, '1999-05-20','2030-02-01'),
('Qatar','Zahed','male',35, '1998-07-11','2018-10-10'),
('USA','Clinton','male',85, '2017-05-20','2030-02-05'),
('USA','Kenedy','male',75, '2017-05-20','2030-02-05'),
('Germany','Merkel','female',50, '2000-03-21','2019-09-02')
;


-- population table
drop table if exists population
;

create temp table population(
  country_name varchar(30),
  pop_size int,
  increse_rate float

)
;

insert into population
values 
('Belgium','11','50.10'),
('Mexico','40','150.10'),
('Brazil','10','1450.10'),
('Bangladesh','11','50.10'),
('Mexico','40','150.10'),
('Brazil','10','1450.10'),
('Belgium','11','50.10'),
('Mexico','40','150.10'),
('Brazil','10','1450.10')

;


drop table if exists languages
;
create temp table languages(
  country varchar(40),
  languages varchar(30),
  no_of_people int
  
)
;

insert into languages
values 
('Bangladesh','Bangali',1234234),
('Bangladesh','English',12344),
('Argentina','Marathi',1234234),
('India','Tamil',100024),
('USA','Hindi',34234),
('Qutar','Japanese',2),
('Egypt','Bangali',124),
('Brazil','English',12344),
('Malaysia','French',1234),
('Australia','Tamil',124),
('India','Hindi',120934234),
('India','Japanese',120),
('USA','Spanish',134),
('England','English',123440938),
('Canada','Bangali',123000),
('Canada','Tamil',124),
('Malaysia','Hindi',4234),
('Japan','Japanese',1209090909)
;


select 
 count(country_name)
from president
;

 


select 
 count(country)
from languages
;


 


select 
 count(country_name)
from population
;



select
  *
--  count(president.country_name) as count1
--  ,  count(languages.country) as count2
from 
  population
  inner join 
  president
   on population.country_name = president.country_name
  inner join
  languages
   on population.country_name = languages.country

;




select

president.country_name as count1
, languages.country as count2
  

--count(president.country_name) as count1
--,count(languages.country) as count2

from 
  population
  inner join 
  president
   on population.country_name = president.country_name
  inner join
  languages
   on population.country_name = languages.country

;





