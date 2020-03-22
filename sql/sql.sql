-- explain analyze

select *
from staff
where id = 'id1' ;


create index on public.staff (id);


drop index staff_id_idx;


drop index staff_pkey;


SELECT tablename,
       indexname
FROM pg_indexes
where tablename = 'staff' PREPARE se(TEXT) as
    select *
    from staff where id = $1;

explain execute se('id1');


select *
from pg_prepared_statements;