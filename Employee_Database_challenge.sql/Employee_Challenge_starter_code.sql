-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
FROM retirement_title as rt
ORDER BY emp_no, to_date DESC;

-- Creating a title count table 


select count(ut.title),
ut.title
from unique_title as ut
group by ut.title
order by count DESC;


--Creating a mentorship_eligibilty 
select  e.emp_no,
        e.first_name,
	    e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		title.title
into mentorship_eligibilty
FROM Employees as e
left join title
on(e.emp_no = title.emp_no)
left join dept_emp as de
on (e.emp_no = de.emp_no)
where(birth_date between '1965-01-01' and '1965-12-31')
order by emp_no;

-- filter for current emplpoyees and remove duplicated emp_no
select DISTINCT ON (me.emp_no) 
       me.emp_no,
       me.first_name,
	   me.last_name,
	   me.birth_date,
	   me.from_date,
	   me.to_date,
	   me.title
into mentorship_eligibilty_new
from mentorship_eligibilty as me
where(me.to_date  = '9999-01-01')
order by emp_no