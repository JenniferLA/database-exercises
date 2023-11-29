use employees;

    -- ORDER BY EXERCISE
-- Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh
SELECT first_name, last_name
FROM employees
ORDER BY first_name IN ('Irena') AND last_name IN ('Flexer') DESC, first_name IN ('Vidya') AND last_name IN ('Awdeh') ASC;

-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT first_name, last_name
FROM employees
ORDER BY first_name IN ('Irena') AND last_name IN ('Acton') DESC, first_name IN ('Vidya') AND last_name IN ('Zweizig') ASC;

-- Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT last_name, first_name
FROM employees
ORDER BY first_name IN ('Irena') AND last_name IN ('Acton') DESC, first_name IN ('Maya') AND last_name IN ('Zyda') ASC;

-- Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT emp_no, last_name
FROM employees
ORDER BY last_name LIKE ('%e'), emp_no ASC;

-- Now reverse the sort order for both queries and compare results.
SELECT emp_no, last_name
FROM employees
ORDER BY last_name LIKE ('%e'), emp_no DESC;


    -- WHERE CLAUSE EXERCISE
    -- PART ONE
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%';

-- Find all employees with a 'q' in their last name — 1,873 rows
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- PART TWO
-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows
SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';