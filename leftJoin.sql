use data_source;
SELECT s.name, s.department, m.manager_name
FROM data1 s
LEFT JOIN managers m
ON s.department = m.department;
