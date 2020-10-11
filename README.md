# Pewlett-Hackard-Analysis

In this project, I am assigned to analyze the SQL Database to determine the number of retiring employees per title and employees who are eligible to participate into a mentorship program.

In order to answer these two questions, I merger among employees table, title table, and departments tables into a new table that contains employees’ basic information, titles as well as length of time at job.

Before filtering merged table by their birth date, I must do one more step to remove duplicated rows that has same employee’s id by applying distinct method. 



Here are some results from two tables
Retiring title table:
1.	After count the table by title, I realized that some of titles have more than 20000 people are eligible. 
2.	Some of them still are not working with company either quit or retire
3.	Employees might have different responsibility even though they are under same title
4.	There are seven different roles need to be filled 



Mentorship eligibility table:
1.	Choosing a mentor shouldn’t only look at the date of birth as it doesn’t reflect how good they are
2.	Filter current employees reach their retirement age
3.	Filter employees by their date of birth 1965
4.	More than 3000 current employees are qualified to be member of mentorship program after retirement



Summary:

1.	Based on the retirement title csv, there are seven different roles need to be filled
2.	we can see from Mentorship eligibility table ,3125 are qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees
 
