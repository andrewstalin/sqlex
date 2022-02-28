-- Найти производителей, которые выпускают более одной модели, 
-- при этом все выпускаемые производителем модели являются продуктами одного типа.
-- Вывести: maker, type



-- with tmp as (
--   select maker , type, count(model) as total
--   from Product
--   group by maker, type
-- ) select t1.maker, t1.type
-- from tmp as t1
-- left join tmp as t2 on t1.maker = t2.maker and t1.type != t2.type and t1.total > 1
-- where t2.type is null;

-- Select pr.maker, min(pr.type) as type
-- from product pr
-- group by pr.maker
-- having max(pr.type)=min(pr.type) and count(pr.model) >  1



-- SELECT maker,
--        string_agg(DISTINCT type, null) AS type
-- FROM product
-- GROUP BY maker
-- HAVING count(model) >  1 AND
--         count(DISTINCT type) = 1;



-- select maker,max(type)
-- from product
-- group by maker
-- having count(DISTINCT type)=1 and count(model)>  1;







--65!!!!!----------
-- Пронумеровать уникальные пары {maker, type} из Product, упорядочив их следующим образом:
-- - имя производителя (maker) по возрастанию;
-- - тип продукта (type) в порядке PC, Laptop, Printer.
-- Если некий производитель выпускает несколько типов продукции, то выводить его имя только в первой строке;
-- остальные строки для ЭТОГО производителя должны содержать пустую строку символов ('').


-- with tmp as (
--   select maker
--       , case 
--           when type = 'PC' then 1
--           when type = 'Laptop' then 2
--           else 3
--         end as t
--       , row_number() over (partition by maker order by maker) as n
--   from (
--     select distinct maker, type from Product
--   ) as types
-- ) select row_number() over (order by maker, t) as num
--        , case when n = 1 then maker else '' end as maker
--        , case
--            when t = 1 then 'PC'
--            when t = 2 then 'Laptop'
--            else 'Printer'
--          end as type
-- from tmp
-- order by num;

--65!!!!!!!!!!!!!!!!1






-- select c.class, allships.name
-- from Classes as c
-- join (
--   select name, class from Ships
--   union 
--   select ship as name, ship as class from Outcomes
-- ) as allships on allships.class = c.class;


-- select 
--       MAX(numGuns ) OVER(PARTITION BY displacement)                           c1

--   FROM Classes ;
  -- select displacement, max(numGuns) as numGuns
  -- from Classes
  -- group by displacement;






-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), вывести название, водоизмещение и число орудий.



-- with tmp as (
--   select coalesce(s.name, c.class) as ship, displacement, numGuns
--   from Classes as c
--   left join Ships as s on s.class = c.class
-- ) select tmp.ship, tmp.displacement, tmp.numGuns
-- from tmp
-- join Outcomes as o on o.ship = tmp.ship
-- where battle = 'Guadalcanal';

-- SELECT o.Ship, COALESCE (c1.displacement, c2.displacement),
--        COALESCE (c1.numGuns, c2.numGuns)
-- FROM outcomes o
-- LEFT JOIN classes c1 ON o.ship=c1.Class
-- LEFT JOIN Ships s ON o.ship=s.Name
-- LEFT JOIN classes c2 ON s.class=c2.Class
-- WHERE (o.battle = 'Guadalcanal')






-- Найти количество маршрутов, которые обслуживаются наибольшим числом рейсов.
-- Замечания.
-- 1) A - B и B - A считать ОДНИМ И ТЕМ ЖЕ маршрутом.
-- 2) Использовать только таблицу Trip

-- with doubles as (
--   select t1.town_from, t1.town_to
--   from Trip t1
--   join Trip t2 on t1.town_from = t2.town_to and t1.town_to = t2.town_from
-- ) ;

with tmp as (
  select town_from, town_to, count(trip_no) as amount
  from Trip
  group by town_from, town_to
) select t1.amount, coalesce(t2.amount, 0)
from tmp as t1 
left join tmp as t2 on t1.town_from = t2.town_to and t1.town_to = t2.town_from;