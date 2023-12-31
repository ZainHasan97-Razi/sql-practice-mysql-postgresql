-- Simple find by name
-- SELECT *
-- FROM users
-- WHERE first_name = 'Max'
-- 
-- 
-- 
-- 
-- For proper searching 
-- SELECT *
-- FROM users
-- WHERE first_name LIKE 'Ma%' -- This means some text that start with 'Ma'
-- WHERE first_name LIKE 'Ma_' -- This means some text that start with 'Ma' and have only 1 character after it
-- 
-- 
-- 
--    
-- 
-- Aggregate functions are the ones that are build into database systems that you can
-- use into your queries to condense multiple rows into one single number
-- Eg: I want to know how many locations we have in total?
-- In this case the count will ignore the null values
-- 
-- SELECT COUNT(id)
-- FROM locations
-- 
-- SELECT MAX(id)
-- FROM locations
-- 
-- SELECT SUM(id)
-- FROM locations
-- 
-- SELECT AVG(id)
-- FROM locations
-- 
-- List of all cities but for every city we wanna know how many locatiosn exist in that city
-- SELECT c.name,
--    COUNT(loc.id) as num_locations
-- FROM cities AS c
--    INNER JOIN locations as loc ON loc.city_name = c.name
-- GROUP BY c.name
-- 
-- We can also group by multiple conditions
-- SELECT c.name, loc.street,
--    COUNT(loc.id) as num_locations
-- FROM cities AS c
--    INNER JOIN locations as loc ON loc.city_name = c.name
-- GROUP BY c.name, loc.street
-- 
-- 
-- 
-- 
-- Having clause ()
-- Eg I want to include only the cities that have locations greater than 1
-- For this purpose we have one solution is to use WHERE clause
-- But note that here aggregation in not part of the condition here but we put a filter earlier
-- SELECT c.name,
--    COUNT(loc.id) as num_locations
-- FROM cities AS c
--    INNER JOIN locations as loc ON loc.city_name = c.name
-- WHERE loc.city_name = 'Munich'
-- GROUP BY c.name
-- 
-- Having clause (aggregation)
SELECT c.name,
   COUNT(loc.id) as num_locations
FROM cities AS c
   INNER JOIN locations as loc ON loc.city_name = c.name
GROUP BY c.name
HAVING COUNT(loc.id) > 1 --
   -- Here having is used after aggregation has happened