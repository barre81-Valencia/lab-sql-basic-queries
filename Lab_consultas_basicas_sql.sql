USE sakila;

-- Mostrar todas las tablas disponibles en la base de datos de Sakila.

SHOW TABLES

-- Recupere todos los datos de las tablas actor, film y customer.

SELECT*
FROM actor;

SELECT*
FROM film;

SELECT*
FROM customer;

-- Recupere las siguientes columnas de sus respectivas tablas:
-- 3.1 Títulos de todas las películas de la filmtabla
SELECT
title
FROM film;

-- 3.2 Lista de idiomas utilizados en películas, con la columna con el alias language de la language tabla
SELECT
name AS language
FROM language;

-- 3.3 Lista de nombres de todos los empleados de la staff tabla
SELECT
first_name
FROM staff;

-- Recuperar años de lanzamiento únicos

SELECT
DISTINCT release_year
FROM film;

-- Conteo de registros para obtener información de la base de datos:
-- 5.1 Determinar el número de tiendas que tiene la empresa.
SELECT
COUNT(DISTINCT store_id) AS store_number
FROM store;

-- 5.2 Determinar el número de empleados que tiene la empresa.
SELECT
COUNT(DISTINCT staff_id) AS staff_number
FROM staff;

-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas ya se han alquilado.
SELECT
COUNT(title) AS total_film_number
FROM film;

SELECT
COUNT(rental_id) AS film_rented
FROM rental
WHERE return_date IS NULL;


-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.
SELECT
COUNT(DISTINCT last_name) AS last_name_number
FROM actor;

-- Recupera las 10 películas más largas.
SELECT
title
FROM film
ORDER BY length DESC
LIMIT 10;

-- Utilice técnicas de filtrado para:
-- 7.1 Recuperar todos los actores con el nombre "SCARLETT".
SELECT
first_name
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración mayor a 100 minutos.
SELECT
title
FROM film
WHERE title LIKE ('%ARMAGEDDON%') AND length > 100;

-- 7.3 Determinar el número de películas que incluyen contenido detrás de escena (behind the scenes)
SELECT
COUNT(special_features) AS behind_scene_number
FROM film
WHERE special_features LIKE '%behind the scenes%';

