use sakila;

select * from film
where film_id = 10;

-- This change is also reflecting in another transaction
-- By default, for evey query level mysql has autocommit set to true 
update film
set title = "The Demon King"
where film_id = 10;

set autocommit = false;
set autocommit = true;

-- Reverts the updates since the last commit 
rollback;

commit;

show variables like 'transaction_isolation';

set session transaction isolation level read committed; 