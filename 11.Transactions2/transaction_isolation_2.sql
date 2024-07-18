use sakila;

select * from film
where film_id = 10;

update film
set title = "Godzilla"
where film_id = 10;

set autocommit = false;
set autocommit = true;

commit;

show variables like 'transaction_isolation';

set session transaction isolation level read committed;