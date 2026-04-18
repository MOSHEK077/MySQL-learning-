use data_source;
SELECT department, AVG(marks) AS avg_marks 
FROM data1
group by department
having avg(marks) > 80
ORDER by avg_marks desc;
