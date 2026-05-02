# 📊 MySQL Practice – Day 3 (INNER JOIN)

## 🧠 Objective

Understand how to combine data from multiple tables using `INNER JOIN`.
This is a core concept in relational databases and backend development.

---

## 🏗️ Database Setup

### 1. Create Database

```sql
CREATE DATABASE IF NOT EXISTS data_source;
USE data_source;
```

---

### 2. Create Tables

#### Students Table (`data1`)

```sql
CREATE TABLE data1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);
```

#### Managers Table (`managers`)

```sql
CREATE TABLE managers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(50),
    manager_name VARCHAR(50)
);
```

---

## 📥 Insert Sample Data

### Students

```sql
INSERT INTO data1 (name, department, marks) VALUES
('Arun', 'Physics', 85),
('Divya', 'Chemistry', 90),
('Karthik', 'Maths', 78),
('Sneha', 'Physics', 88),
('Rahul', 'Maths', 67);
```

### Managers

```sql
INSERT INTO managers (department, manager_name) VALUES
('Physics', 'Dr. Kumar'),
('Maths', 'Dr. Ravi'),
('Chemistry', 'Dr. Meena');
```

---

## 🔗 INNER JOIN Query

```sql
SELECT s.name, s.department, m.manager_name
FROM data1 s
INNER JOIN managers m
ON s.department = m.department;
```

---

## 🔍 Explanation

* `FROM data1 s` → Selects the main table (students) and assigns alias `s`
* `INNER JOIN managers m` → Brings in the managers table with alias `m`
* `ON s.department = m.department` → Matches rows based on department
* `SELECT ...` → Chooses columns from both tables to display

---

## 📌 Output Example

| name    | department | manager_name |
| ------- | ---------- | ------------ |
| Arun    | Physics    | Dr. Kumar    |
| Divya   | Chemistry  | Dr. Meena    |
| Karthik | Maths      | Dr. Ravi     |

---

## ⚠️ Key Concepts

* `INNER JOIN` returns only matching records
* Non-matching rows are excluded
* Aliases (`s`, `m`) improve readability
* Joining on text fields works, but IDs are preferred in real systems

---

## 🚀 Learning Outcome

* Understood how relational tables connect
* Learned to combine data using JOIN
* Built foundation for real-world backend queries

---

## 📁 File Structure

```
innerjoin.sql
README.md
```

---

## 🔥 Next Step

* Learn `LEFT JOIN` (handling missing data)
* Practice multi-table joins

---

Consistency > intensity.
One query a day. Real growth.
