use sakila;

-- ****************** QUERY - 1 ******************
SELECT * FROM actor
WHERE first_name = "Scarlett";

-- ****************** QUERY - 2 ******************
SELECT * FROM actor
WHERE last_name = "Johansson";

-- ****************** QUERY - 3 ******************
SELECT
	count(distinct last_name) AS "Distinct Lastname for actors"
FROM actor;

-- ****************** QUERY - 4 ******************
SELECT last_name, count(last_name) AS "count of last_name which are not repeated"
FROM actor
GROUP BY last_name
HAVING count(last_name) = 1;

-- ****************** QUERY - 5 ******************
SELECT last_name AS "last name appeard more than once",
count(last_name) AS "Number of times last name appeared"
FROM actor
GROUP BY last_name
HAVING count(last_name) > 1;

-- ****************** QUERY - 6 ****************** (Pending)
-- actor, film_actor, film

SELECT
	actor.actor_id AS "Actors id",
	actor.first_name AS "Actor firstname",
    actor.last_name AS "Actor lastname",
    count(film.film_id) AS "Number of films"
FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
JOIN film
ON film_actor.actor_id = film.film_id
GROUP BY actor.actor_id;

-- ****************** QUERY - 7 ******************
SELECT avg(length) AS "Average Film Length" FROM film;

-- ****************** QUERY - 8 ******************
SELECT film_category.category_id, avg(film.length) AS "Average length by category"
FROM film
LEFT JOIN film_category
ON film.film_id = film_category.film_id
GROUP BY film_category.category_id
ORDER BY film_category.category_id;


-- ****************** QUERY - 9 ******************
SELECT
	film_category.category_id AS "Film Category",
    film.title AS "Film Title",
    film.length AS "Film Length",
    avg(film.length) AS "Average Film Length"
FROM film
JOIN film_category
	ON film_category.film_id = film.film_id
GROUP BY film_category.category_id
HAVING film.length > avg(film.length);