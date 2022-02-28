


with students_rating as (
    select student, subject, mark,
       rank() over (partition by subject order by mark desc) as rating
    from students
)
select student, subject, mark
from students_rating
where rating <= 3;


-- create table students (
-- 	student varchar(50) not null,
--     subject varchar(50) not null,
--     mark int not null
-- );
-- insert into students values('ben', 'art', 5);
-- insert into students values('john', 'art', 4);
-- insert into students values('dominik', 'art', 3);
-- insert into students values('piter', 'art', 2);
-- insert into students values('ben', 'history', 4);
-- insert into students values('piter', 'history', 2);
-- insert into students values('ben', 'math', 2);
-- insert into students values('piter', 'math', 3);
-- insert into students values('dominik', 'math', 3);
-- insert into students values('olga', 'math', 5);
-- insert into students values('patrik', 'math', 5);


