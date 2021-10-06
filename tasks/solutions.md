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

## **Task **
```sql
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
