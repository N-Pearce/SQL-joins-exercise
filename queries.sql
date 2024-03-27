-- write your queries here

-- 1

select * from owners full join vehicles on vehicles.owner_id = owners.id;

-- 2

select first_name, last_name, count(*) from owners join vehicles on vehicles.owner_id = owners.id group by first_name, last_name order by first_name;

-- 3

select first_name, last_name, round(avg(price)), count(owner_id) from owners join vehicles on vehicles.owner_id = owners.id group by owners.id having avg(price) > 10000 order by first_name desc;