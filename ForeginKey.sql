USE data_source;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'Physics'),
(2, 'Maths'),
(3, 'Chemistry');

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);
INSERT INTO students VALUES
(101, 'Arun', 1),
(102, 'Divya', 2);


INSERT INTO students VALUES
(103, 'Rahul', 10);

SELECT s.student_name, d.department_name
FROM students s
INNER JOIN departments d
ON s.department_id = d.department_id;
