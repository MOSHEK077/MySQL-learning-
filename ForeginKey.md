# 📘 MySQL Practice – Day 9 (FOREIGN KEY)

## 🧠 Objective

Learn how to create relationships between tables using `FOREIGN KEY` in MySQL.

This concept helps maintain:

* data integrity
* relational consistency
* valid references between tables

---

# 🏗️ Step-by-Step Execution

---

## 🔹 Step 1 — Select Database

### ✅ Query

```sql id="rmfk1"
USE data_source;
```

### 🎯 Purpose

Selects the working database:

```id="rmfk2"
data_source
```

All upcoming operations will run inside this database.

---

# 🔹 Step 2 — Create Parent Table

### ✅ Query

```sql id="rmfk3"
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
```

### 🎯 Purpose

Creates the parent table:

```id="rmfk4"
departments
```

This table stores department information.

---

# 🔹 Step 3 — Insert Department Data

### ✅ Query

```sql id="rmfk5"
INSERT INTO departments VALUES
(1, 'Physics'),
(2, 'Maths'),
(3, 'Chemistry');
```

### 🎯 Purpose

Adds valid department records into the parent table.

---

# 🔹 Step 4 — Create Child Table with FOREIGN KEY

### ✅ Query

```sql id="rmfk6"
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);
```

### 🎯 Purpose

Creates the child table:

```id="rmfk7"
students
```

and establishes a relationship between:

```id="rmfk8"
students.department_id
```

and:

```id="rmfk9"
departments.department_id
```

This ensures that students can only belong to existing departments.

---

# 🔹 Step 5 — Insert Valid Student Data

### ✅ Query

```sql id="rmfk10"
INSERT INTO students VALUES
(101, 'Arun', 1),
(102, 'Divya', 2);
```

### 🎯 Purpose

Adds student records linked to valid department IDs.

---

# 🔹 Step 6 — Test FOREIGN KEY Constraint

### ✅ Query

```sql id="rmfk11"
INSERT INTO students VALUES
(103, 'Rahul', 10);
```

### 🎯 Purpose

Tests FOREIGN KEY protection.

This query should fail because:

```id="rmfk12"
department_id = 10
```

does not exist in:

```id="rmfk13"
departments
```

---

# 🔹 Step 7 — Retrieve Department Name Using JOIN

### ✅ Query

```sql id="rmfk14"
SELECT s.student_name, d.department_name
FROM students s
INNER JOIN departments d
ON s.department_id = d.department_id;
```

### 🎯 Purpose

Combines:

* student data
* department data

using relational mapping.

---

# 📌 Example Output

| student_name | department_name |
| ------------ | --------------- |
| Arun         | Physics         |
| Divya        | Maths           |

---

# 🧠 Core Concept

Instead of storing:

```id="rmfk15"
department_name
```

inside every student record,
the database stores:

```id="rmfk16"
department_id
```

and connects tables using relationships.

This reduces:

* duplication
* inconsistency
* maintenance problems

---

# 🌍 Real-World Usage

| Parent Table | Child Table |
| ------------ | ----------- |
| departments  | employees   |
| customers    | orders      |
| users        | posts       |
| hospitals    | patients    |
| categories   | products    |

---

# ⚡ Important Concept

FOREIGN KEY ensures:

> Child records cannot reference non-existing parent records.

This maintains:

```id="rmfk17"
data integrity
```

inside relational databases.

---

# 🎯 Learning Outcome

After completing this task, I understood:

* How FOREIGN KEY works
* Parent-child table relationships
* Relational mapping using IDs
* How JOIN retrieves related data
* Importance of data integrity

---

# 📁 Project Structure

```id="rmfk18"
day9_foreign_key.sql
README.md
```

---

# 🚀 Next Step

Possible next topics:

* SUBQUERY
* CASE Statement
* VIEW
* INDEX
* STORED PROCEDURE
* CONSTRAINTS

---

Relational databases are built on relationships.
FOREIGN KEY is what keeps those relationships trustworthy.
