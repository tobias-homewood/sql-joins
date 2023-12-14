-- write your queries here

--1
select *
from owners left join vehicles 
on owners.id = owner_id;


--2
select first_name, last_name, count(*) as "Vehicles owned"
from owners join vehicles
on owners.id = owner_id
group by owner_id, first_name, last_name
order by first_name asc;

--3
select first_name, last_name, 
CAST(avg(price) as INT) as "Average price",
count(*) as "Vehicles owned"
from owners join vehicles
on owners.id = owner_id
group by owner_id, first_name, last_name
having count(*) > 1
and avg(price) > 10000
order by first_name desc;
