SELECT customer.first_name, customer.last_name, customer.email, address.address, address.address2, address.postal_code FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE city_id = 312;

SELECT title, film.description, film.release_year, film.rating, film.special_features, category.name from film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy';

SELECT actor.actor_id, CONCAT(actor.first_name, '', actor.last_name) AS actor, title, film.description, film.release_year FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 5;

SELECT customer.first_name, customer.last_name, customer.email, address.address FROM customer
JOIN address on customer.address_id = address.address_id
JOIN city on address.city_id = city.city_id IN (1, 42, 312 and 459);

SELECT film.title, film.description, film.release_year, film.rating, film.special_features FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.rating = "G" AND film.special_features LIKE '%behind the scences%'AND actor.actor_id = 15;

SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name ,  '' , actor.last_name) AS actor_name from film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369;

SELECT film.title, film.description, film.release_year, film.special_features, category.name AS Genre from film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE film.rental_rate = 2.99;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre, actor.first_name, actor.last_name FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE actor.first_name = 'Sandra' and actor.last_name ='Kilmer' AND category.name = 'Action';









