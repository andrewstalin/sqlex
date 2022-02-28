## **Task 1**
```sql
select model, speed, hd
from PC
where price < 500;
```

## **Task 2**
```sql
select distinct maker 
from product
where type='Printer';
```

## **Task 3**
```sql
select model, ram, screen
from laptop 
where price > 1000;
```

## **Task 4**
```sql
select * 
from printer 
where color='y';
```

## **Task 5**
```sql
select model, speed, hd 
from pc
where cd in ('12x', '24x') and price < 600;
```

## **Task 6**
```sql
select distinct p.maker, l.speed
from Laptop as l
join Product as p on l.model = p.model
where l.hd >= 10;
```

## **Task 7**
```sql
select p.model, l.price
from Product as p
join Laptop as l on l.model = p.model
where maker = 'B'
union
select p.model, PC.price
from Product as p
join PC on PC.model = p.model
where maker = 'B'
union
select p.model, pr.price
from Product as p
join Printer as pr on pr.model = p.model
where maker = 'B';
```

## **Task 8**
```sql
select distinct maker
from Product
where type = 'PC' and maker not in (
  select distinct maker 
  from Product
  where type = 'Laptop' 
);
```

## **Task 9**
```sql
select distinct p.maker 
from product p 
join pc on p.model=pc.model
where speed >= 450;
```

## **Task 10**
```sql
select model, price 
from printer 
order by price desc
fetch first 1 rows with ties;
```

## **Task 11**
```sql
select avg(speed) from pc;
```

## **Task 12**
```sql
select avg(speed) 
from laptop
where price > 1000;
```

## **Task 13**
```sql
select avg(speed) 
from pc 
join product as p on p.model=pc.model
where maker='A';
```

## **Task 14**
```sql
select s.class, s.name, c.country 
from ships as s
join classes as c on c.class = s.class
where c.numGuns >= 10;
```

## **Task 15**
```sql
select hd 
from pc 
group by hd
having count(hd)>=2;
```

## **Task 16**
```sql
select distinct pc1.model, pc2.model, pc1.speed, pc2.ram
from PC as pc1
join PC as pc2 on pc1.speed = pc2.speed and pc1.ram = pc2.ram and pc1.model > pc2.model;
```

## **Task 17**
```sql
select distinct 'Laptop', model, speed
from Laptop
where speed < (select min(speed) from PC);
```

## **Task 18**
```sql
select distinct p.maker, pr.price
from Product as p 
join Printer as pr on pr.model = p.model
where pr.color = 'y' and pr.price is not null
order by pr.price
fetch first 1 rows with ties;
```

## **Task 19**
```sql
select p.maker, avg(l.screen) as average_screen
from product p
join laptop l on p.model=l.model
group by p.maker;
```

## **Task 20**
```sql
select maker, count(*)
from Product
where type = 'PC'
group by maker
having count(*) >= 3;
```

## **Task 21**
```sql
select p.maker, max(PC.price)
from Product as p
join PC on PC.model = p.model
group by p.maker;
```

## **Task 22**
```sql
select speed, avg(price)
from PC
where speed > 600
group by speed;
```

## **Task 23**
```sql
select distinct p1.maker 
from Product as p1
join Product as p2 on p1.maker = p2.maker
where p1.model in (select model from PC where speed > = 750) 
  and p2.model in (select model from Laptop where speed > = 750);
```

## **Task 24**
```sql
with tmp as (
  select model, price
  from PC
  union
  select model, price
  from Printer
  union
  select model, price
  from Laptop
) select model
from tmp
order by price desc
fetch first 1 rows with ties;
```

## **Task 25**
```sql
with tmp as (
  select p.maker, PC.ram, PC.speed
  from PC
  join Product as p on p.model = PC.model
  order by PC.ram asc, PC.speed desc
  fetch first 1 rows with ties
) select distinct p.maker
from Product as p
join tmp on tmp.maker = p.maker
where p.type = 'Printer';
```

## **Task 26**
```sql
select avg(coalesce(PC.price, l.price, 0))
from Product as p
left join PC on PC.model = p.model
left join Laptop as l on p.model = l.model
where p.maker = 'A' and (p.type = 'PC' or p.type = 'Laptop');
```

## **Task 27**
```sql
select p.maker, avg(PC.hd) 
from Product as p 
join PC on PC.model = p.model
where p.type = 'PC' and p.maker in (
  select distinct maker from Product 
  where type='Printer'
)
group by maker;
```

## **Task 28**
```sql
select sum(val)
from (
  select 1 as val 
  from Product
  group by maker
  having count(model) = 1
) as counts;
```

## **Task 29**
```sql
select  coalesce(i.point, o.point) as point 
      , coalesce(i.date, o.date) as date
      , i.inc, o.out
from Income_o as i
full join Outcome_o as o on i.point = o.point and i.date = o.date;
```

## **Task 30**
```sql
with tmp as (
  select point, date, NULL as out, inc
  from Income
  union all
  select point, date, out, NULL as inc
  from Outcome
) select point, date, sum(out), sum(inc)
from tmp
group by point, date;
```

## **Task 31**
```sql
select class, country
from Classes
where bore >= 16;
```

## **Task 32**
```sql
with tmp as (
  select name, class from Ships
  union 
  select ship as name, ship as class from outcomes
) select c.country, round(avg(c.bore*c.bore*c.bore / 2)::numeric, 2) as mv
from Classes as c
join tmp on tmp.class = c.class
group by c.country;
```

## **Task 33**
```sql
select ship
from Outcomes
where result = 'sunk' and battle = 'North Atlantic';
```

## **Task 34**
```sql
select s.name 
from Classes as c
join Ships as s on s.class = c.class
where c.displacement > 35000 and c.type = 'bb' and s.launched >= 1922;
```

## **Task 35**
```sql
select model, type
from Product
where model not like '%[^0-9]%' or model not like '%[^a-zA-Z]%';
```

## **Task 36**
```sql
select c.class
from Classes as c
join Ships as s on s.name = c.class
union
select c.class
from Classes as c
join Outcomes as o on o.ship = c.class;
```

## **Task 37**
```sql
with tmp as (
  select c.class, s.name
  from Classes as c
  join Ships as s on s.class = c.class
  union
  select c.class as class, o.ship as name
  from Classes as c
  join Outcomes as o on o.ship = c.class
) select class
from tmp
group by class
having count(name) = 1;
```

## **Task 38**
```sql
select distinct c1.country
from Classes as c1
join Classes as c2 on c1.country = c2.country and c1.type = 'bb' and c2.type = 'bc';
```

## **Task 39**
```sql
with tmp as (
  select o.ship, o.battle, b.date, o.result
  from Outcomes as o
  join Battles as b on b.name = o.battle
) select distinct t1.ship
from tmp as t1
join tmp as t2 on t1.ship = t2.ship 
              and t1.battle != t2.battle
              and t1.date < t2.date
              and t1.result = 'damaged';
```

## **Task 40**
```sql
with tmp as (
  select maker , type, count(model) as total
  from Product
  group by maker, type
) select t1.maker, t1.type
from tmp as t1
left join tmp as t2 on t1.maker = t2.maker and t1.type != t2.type
where t2.type is null and t1.total > 1;
```

## **Task 41**
```sql
with tmp as (
  select model, price from PC
  union
  select model, price from Laptop
  union
  select model, price from Printer
) select maker
       , case 
           when count(tmp.price) != count(tmp.model) then null
           else max(tmp.price)
         end
from tmp
join Product as p on p.model = tmp.model
group by maker;
```

## **Task 42**
```sql
select ship, battle
from Outcomes 
where result = 'sunk';
```

## **Task 43**
```sql
select name
from Battles
where extract(year from date) not in (
  select distinct launched
  from Ships
  where launched is not null
);
```
### MS SQL
```sql
select name
from Battles
where year(date) not in (
  select distinct launched
  from Ships
  where launched is not null
)
```

## **Task 44**
```sql
select name from Ships where name like 'R%'
union
select ship from Outcomes where ship like 'R%';
```

## **Task 45**
```sql
select name from Ships where length(name) - length(replace(name, ' ', '')) >= 2
union
select ship from Outcomes where length(ship) - length(replace(ship, ' ', '')) >= 2;
```
### MS SQL
```sql
select name from Ships where len(name) - len(replace(name, ' ', '')) >= 2
union
select ship from Outcomes where len(ship) - len(replace(ship, ' ', '')) >= 2
```

## **Task 46**
```sql
select o.ship
     , coalesce (c1.displacement, c2.displacement)
     , coalesce (c1.numGuns, c2.numGuns)
from Outcomes as o
left join Classes as c1 ON o.ship=c1.class
left join Ships as s ON o.ship=s.Name
left join Classes as c2 ON s.class=c2.class
where (o.battle = 'Guadalcanal');
```

## **Task 47**
```sql
with tmp as (
  select allships.country, allships.ship,
         case 
           when result = 'sunk' then 1
           else 0
         end as result
  from (
    select country, name as ship from Classes as c join Ships as s on c.class=s.class
    union
    select country, ship from Outcomes as o join Classes as c on c.class=o.ship
  ) as allships
  left join Outcomes as o on o.ship = allships.ship
) select country
from tmp
group by country
having count(distinct ship) = sum(result);
```

## **Task 48**
### Variant 1
```sql
select distinct coalesce(s.class, o.ship)
from Outcomes as o
left join Ships as s on s.name = o.ship
join Classes as c on c.class = coalesce(s.class, o.ship)
where o.result = 'sunk';
```
### Variant 2
```sql
select class 
from Classes
where class in ( 
  select coalesce(class, ship) as class
  from Outcomes
  full join ships on ship = name
  where result = 'sunk'
);
```

## **Task 49**
```sql
select s.name from Ships as s join Classes as c on c.class = s.class where c.bore = 16
union
select class from Classes join Outcomes on ship = class where bore = 16;
```

## **Task 50**
```sql
select distinct battle
from Outcomes
join Ships on name = ship
where class = 'Kongo';
```

## **Task 51**
```sql
with tmp as (
  select allships.name
       , max(numGuns) over (partition by c.displacement) maxNumGuns
       , numGuns 
  from Classes as c 
  join (
    select name, class from Ships
    union 
    select ship as name, ship as class from Outcomes
  ) as allships on c.class = allships.class
) select name
from tmp where maxNumGuns = numGuns;
```

## **Task 52**
```sql
select s.name
from Ships as s
join Classes as c on c.class = s.class
where c.country = 'Japan' and c.type = 'bb' 
  and (c.numGuns is null or c.numGuns >= 9) 
  and (c.bore is null or c.bore < 19) 
  and (c.displacement is null or  c.displacement <= 65000);
```

## **Task 53**
```sql
select round(avg(numGuns)::numeric, 2)
from Classes
where type = 'bb';
```
### MS SQL
```sql
select cast(avg(cast(numGuns as float)) as numeric(10, 2))
from Classes
where type = 'bb'
```

## **Task 54**
```sql
select round(avg(c.numGuns)::numeric, 2)
from Classes as c
join (
  select name, class from Ships
  union 
  select ship as name, ship as class from Outcomes
) as allships on allships.class = c.class
where c.type = 'bb';
```
### MS SQL
```sql
select cast(avg(cast(c.numGuns as float)) as numeric(10, 2))
from Classes as c
join (
  select name, class from Ships
  union 
  select ship as name, ship as class from Outcomes
) as allships on allships.class = c.class
where c.type = 'bb';
```

## **Task 55**
```sql
select c.class, min(s.launched)
from Classes as c
left join Ships as s on s.class = c.class
group by c.class;
```

## **Task 56**
```sql
select c.class, sum(case when allships.name is null then 0 else 1 end)
from Classes as c
left join (
  select class, name from Ships join Outcomes on ship = name where result = 'sunk'
  union
  select ship as class, ship as name from Outcomes where result = 'sunk'
) as allships on allships.class = c.class
group by c.class;
```

## **Task 57**
```sql
select class, count(ship)
from (
  select class, name from Ships
  union
  select ship as class, ship as name from Outcomes
) as allships
left join Outcomes on name = ship and result = 'sunk'
group by class
having count(ship) > 0 and count(*) > 2;
```

## **Task 58**
```sql
with tmp1 as (
  select maker, type
  from (
    select 'Laptop' as type
    union
    select 'PC'
    union
    select 'Printer'
  ) as types, (
    select distinct maker from Product
  ) as makers
), tmp2 as (
  select bytype.maker, bytype.type, bytype.models as m1, bymaker.models as m2
  from (
    select  maker, type, count(model) as models
    from Product
    group by  maker, type
  ) as bytype
  join (
    select maker, count(model) as models
    from Product
    group by maker
  ) as bymaker on bymaker.maker = bytype.maker
) select tmp1.maker, tmp1.type
       , case 
          when tmp2.m1 is null then round(cast(0 as float)::numeric, 2)
          else round((cast(tmp2.m1*100 as float)/tmp2.m2)::numeric, 2)
         end
from tmp1
left join tmp2 on tmp1.maker = tmp2.maker and tmp1.type = tmp2.type
```

## **Task 59**
```sql
select coalesce(i.point, o.point) as point, sum(coalesce(i.inc, 0)) - sum(coalesce(o.out, 0))
from Income_o as i
full join Outcome_o as o on o.point = i.point and o.date = i.date
group by coalesce(i.point, o.point);
```

## **Task 60**
```sql
select coalesce(i.point, o.point) as point, sum(coalesce(i.inc, 0)) - sum(coalesce(o.out, 0))
from Income_o as i
full join Outcome_o as o on o.point = i.point and o.date = i.date
where (i.date is null or i.date < '20010415 00:00:00.000') and (o.date is null or o.date < '20010415 00:00:00.000')
group by coalesce(i.point, o.point);
```

## **Task 61**
```sql
select sum(val) 
from (
  select inc as val, date, point from Income_o
  union all
  select -out as val, date, point from Outcome_o
) as values;
```

## **Task 62**
### Varinat 1
```sql
select sum(coalesce(i.inc, 0)) - sum(coalesce(o.out, 0))
from Income_o as i
full join Outcome_o as o on o.point = i.point and o.date = i.date
where (i.date is null or i.date < '20010415 00:00:00.000') and (o.date is null or o.date < '20010415 00:00:00.000');
```
### Variant 2
```sql
select sum(val) 
from (
  select inc as val, date, point from Income_o
  union all
  select -out as val, date, point from Outcome_o
) as values
where date < '20010415 00:00:00.000';
```

## **Task 63**
### Varinat 1
```sql
select name
from Passenger
where ID_psg in  (
  select distinct pt1.ID_psg
  from Pass_in_trip pt1, Pass_in_trip pt2
 where pt1.ID_psg = pt2.ID_psg 
   and pt1.place = pt2.place 
   and (pt1.date != pt2.date or pt1.trip_no != pt2.trip_no)
);
```
### Varinat 2
```sql
with tmp as (
  select distinct ID_psg
  from Pass_in_trip
  group by ID_psg, place
  having count(place) > 1
) select p.name
from tmp
join Passenger as p on p.ID_psg = tmp.ID_psg;
```

## Task 64
```sql
select i.point, i.date, 'inc', sum(i.inc)
from Income as i
left join Outcome as o on o.date = i.date and o.point = i.point
where o.code is null
group by i.point, i.date
union all
select o.point, o.date, 'out', sum(o.out)
from Outcome as o
left join Income as i on i.date = o.date and i.point = o.point
where i.code is null
group by o.point, o.date;
```

## **Task 65**
```sql

```

## Task 66
### Variant 1
```sql
with tmp as (
  select count(trip_no) as trip_count
  from trip
  group by town_from, town_to
) select count(trip_count)
from tmp
where trip_count = (select max(trip_count) from tmp);
```

### Variant 2 (more efficient)
```sql
with tmp as (
  select count(trip_no) as trip_count
  from trip
  group by town_from, town_to
  order by trip_count desc
  fetch first 1 rows with ties
) select count(*) from tmp;
```

## **Task 67**
```sql
```

## **Task 68**
```sql

```

## **Task 69**
```sql
```

## **Task 70**
```sql
```

## **Task **
```sql
```