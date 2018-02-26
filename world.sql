SELECT countries.name, languages.language, languages.percentage from countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

SELECT countries.name, COUNT(cities.id) as num_cities
FROM countries
	JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY num_cities DESC;

SELECT cities.name, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Mexico' and cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT countries.name, countries.surface_area, countries.population FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

SELECT countries.name, countries.government_form, countries.capital FROM countries
WHERE countries.government_form = 'Constitutional Monarchy' and countries.capital > 200 and countries.life_expectancy > 75;

SELECT countries.region, COUNT(countries.id) as num_countries FROM countries
GROUP BY countries.region
ORDER BY num_countries DESC;
