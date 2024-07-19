use sakila;

select * from film
where film_id = 2;

-- This change is also reflecting in another transaction
-- By default, for evey query level mysql has autocommit set to true 
update film
set title = "something"
where film_id = 2;

set autocommit = false;
set autocommit = true;

-- Reverts the updates since the last commit 
rollback;

commit;

show variables like 'transaction_isolation';

set session transaction isolation level read committed;