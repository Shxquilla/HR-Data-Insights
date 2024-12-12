USE hr;

SELECT * FROM hr;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
	WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;


ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

DESCRIBE hr;

SELECT birthdate FROM hr;

UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
	WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

UPDATE hr
SET termdate = DATE(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'));

UPDATE hr
SET termdate = '0000-00-00'
WHERE termdate IS NULL OR termdate = '';

UPDATE hr
SET termdate = NULL
WHERE termdate = '0000-00-00';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

SELECT * FROM hr;

ALTER TABLE hr ADD COLUMN age INT;

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());

SELECT 
	MIN(age) AS youngest,
    MAX(age) AS oldest
FROM hr;

SELECT COUNT(*) FROM hr WHERE age < 18;

-- what is the gender breakdown of employees in the company?
SELECT gender, count(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY gender;

-- what is the race/ethnicity breakdown of employees in the company?
SELECT race, count(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY race
ORDER BY count(*) DESC;

-- what is the age distribution of employees in the company?
SELECT
	MIN(age) AS youngest,
    MAX(age) AS oldest
FROM hr
WHERE age >= 18 AND termdate IS NULL;

SELECT
    CASE
        WHEN age >= 18 AND age <= 24 THEN '18-24'
        WHEN age >= 25 AND age <= 34 THEN '25-34'
        WHEN age >= 35 AND age <= 44 THEN '35-44'
        WHEN age >= 45 AND age <= 54 THEN '45-54'
        WHEN age >= 55 AND age <= 64 THEN '55-64'
        ELSE '65+'
    END AS age_group, gender,
    COUNT(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY age_group, gender
ORDER BY age_group, gender;

-- How many employees ork at headquarters versus remote locations?
SELECT location, count(*) AS count
FROM hr 
WHERE age >= 18 AND termdate IS NULL
GROUP BY location;

-- what is the avg length of employement for employees who have been terminated?
SELECT
    AVG(DATEDIFF(termdate, hire_date)) / 365 AS avg_employment
FROM hr
WHERE termdate IS NOT NULL AND termdate <= CURDATE() AND age >= 18;

-- How does the gender distribution vary across departments and job titles?
SELECT department, gender, COUNT(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY department, gender
ORDER BY department;

-- what is the distribution of job titles across the company?
SELECT jobtitle, COUNT(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY jobtitle
ORDER BY jobtitle;

-- which department has the highest turnover rate?
SELECT department, 
	total_count,
    terminated_count,
    terminated_count/total_count AS termination_rate;

-- what is the distribution of employees across locations by city and state?
SELECT location_state, COUNT(*) AS count
FROM hr
WHERE age >= 18 AND termdate IS NULL
GROUP BY location_state
ORDER BY count DESC;

-- How has the company's employee count change over time based on hire and term dates?
SELECT
	year,
    hires AS hires,
    terminations,
    hires - terminations AS net_change,
    round((hires - terminations)/hires * 100, 2) AS net_change_percent
FROM(
	SELECT 
		YEAR(hire_date) AS year,
        count(*) AS hires,
        SUM(CASE WHEN termdate IS NOT NULL AND termdate <= CURDATE() THEN 1 ELSE 0 END) AS terminations
	FROM hr
    WHERE age >=18
    GROUP BY YEAR(hire_date)
    ) AS subquery2
ORDER BY year ASC;

-- What is the tenure distribution for each department?
SELECT department, 
       ROUND(AVG(DATEDIFF(termdate, hire_date)) / 365, 0) AS avg_tenure
FROM hr
WHERE termdate IS NOT NULL AND termdate <= CURDATE() AND age >= 18
GROUP BY department;








