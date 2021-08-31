-- https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- Top Earners

SELECT CONCAT(MAX(MONTHS * SALARY), "  ", COUNT(EMPLOYEE_ID))
FROM EMPLOYEE
GROUP BY MONTHS * SALARY
ORDER BY MONTHS * SALARY DESC
LIMIT 1
;
