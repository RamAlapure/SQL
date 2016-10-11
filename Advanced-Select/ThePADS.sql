/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 

There are total [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

The results of the first query are formatted to the problem description's specifications. 
The results of the second query are ascendingly ordered first by number of names corresponding to each profession (), and then alphabetically by profession (, and ).
Enter your query here.
*/

select concat(Name,'(',Substring(Occupation,1,1),')') as Name
from occupations Order by Name;
select concat('There are total',' ',count(occupation),' ',lower(occupation),'s.') as total
from occupations group by occupation order by total;

//OR

SELECT concat(NAME, CASE 
                        WHEN occupation = "Doctor" THEN "(D)" 
                        WHEN occupation = "Professor" THEN "(P)" 
                        WHEN occupation = "Singer" THEN "(S)" 
                        WHEN occupation = "Actor" THEN "(A)" 
                    END )
FROM OCCUPATIONS ORDER BY NAME; 
SELECT "There are total", COUNT(OCCUPATION), concat(LOWER(OCCUPATION),"s.") FROM OCCUPATIONS 
GROUP BY OCCUPATION ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;


