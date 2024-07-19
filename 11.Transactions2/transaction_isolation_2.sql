use sakila;

select * from film
where film_id = 2;

update film
set title = "Godzilla"
where film_id = 20;

set autocommit = false;

commit;

show variables like 'transaction_isolation';

set session transaction isolation level read committed; 

/*
For the first time when you read a row, it creates a snapshot of the rows.
It will keep reading the same value in the current transaction
*/
set session transaction isolation level repeatable read;