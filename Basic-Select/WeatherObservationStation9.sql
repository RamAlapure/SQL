/*
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

OR CITY NOT LIKE '%E%' OR CITY NOT LIKE '%I%' OR CITY NOT LIKE '%O%' OR CITY NOT LIKE '%U%'
Enter your query here.
*/

SELECT DISTINCT(CITY) FROM STATION WHERE 
CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%';
