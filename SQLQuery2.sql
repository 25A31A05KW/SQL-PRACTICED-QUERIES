SELECT city,SUM(salary) AS total_salary
FROM employees
GROUP BY city
HAVING SUM(salary) > 150000
ORDER BY SUM(salary) DESC


SELECT city,COUNT(employee_id) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(employee_id) = 3

SELECT department,AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000

SELECT department,COUNT(employee_id) AS req
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(employee_id) >= 2

-- WHEN,THEN AND CASE

SELECT employee_name,salary,
CASE
    WHEN salary >= 70000 THEN 'HIGH'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'MEDIUM'
    ELSE
    'LOW'
END AS demo
FROM employees

SELECT employee_name,bonus,
CASE
    WHEN bonus >  = 5000 THEN 'GOOD BONUS'
    WHEN bonus BETWEEN 0 AND 49999 THEN 'NORMAL BONUS'
    ELSE
    'NO BONUS'
END AS bonus_det
FROM employees
ORDER BY bonus DESC

-- ON AGE
SELECT employee_name,age,
CASE
    WHEN age > 30 THEN 'SENIOR'
    WHEN age BETWEEN 25 AND 30 THEN 'MID-LEVEL'
    ELSE
    'JUNIOR'
END AS age_report
FROM employees