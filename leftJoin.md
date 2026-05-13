# 📘 MySQL Practice – Day 4 (LEFT JOIN)

## 🧠 Objective

Learn how to use `LEFT JOIN` to display all records from the left table, even when matching data does not exist in the second table.

This is one of the most important concepts in real-world relational databases.

---

# 🏗️ Database Setup

## 🔹 Create Database

```sql id="r41"
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;
```

---

# 🧱 Create Tables

## 1. Customers Table

```sql id="r42"
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);
```

---

## 2. Orders Table

```sql id="r43"
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50)
);
```

---

# 📥 Insert Sample Data

## Customers

```sql id="r44"
INSERT INTO customers (name) VALUES
('Arun'),
('Divya'),
('Rahul');
```

---

## Orders

```sql id="r45"
INSERT INTO orders (customer_id, product) VALUES
(1, 'Laptop'),
(2, 'Phone');
```

---

# 🔗 LEFT JOIN Query

```sql id="r46"
SELECT c.name, o.product
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
```

---

# 🔍 Explanation

## `FROM customers c`

* `customers` is the main table
* `c` is an alias (short name)

SQL starts with all customers.

---

## `LEFT JOIN orders o`

* Combines data from the `orders` table
* `o` is an alias for `orders`

---

## `ON c.customer_id = o.customer_id`

* Matches rows using `customer_id`
* Connects customers with their orders

---

## `SELECT c.name, o.product`

Displays:

* customer name
* ordered product

---

# 📌 Output Example

| name  | product |
| ----- | ------- |
| Arun  | Laptop  |
| Divya | Phone   |
| Rahul | NULL    |

---

# ⚠️ Important Concept

Rahul appears even though he has no order.

Why?

Because:

```sql id="r47"
LEFT JOIN
```

keeps all rows from the left table (`customers`).

Missing matching values become:

```id="r48"
NULL
```

---

# 🔥 INNER JOIN vs LEFT JOIN

| INNER JOIN                  | LEFT JOIN                   |
| --------------------------- | --------------------------- |
| Shows only matching rows    | Shows all left table rows   |
| Missing matches are removed | Missing matches become NULL |

---

# 🌍 Real-World Usage

LEFT JOIN is commonly used in:

* E-commerce systems
* Banking applications
* Hospital management systems
* School databases
* HR management software

Examples:

* Customers without orders
* Students without attendance
* Employees without projects

---

# 🎯 Learning Outcome

After completing this task, I understood:

* How LEFT JOIN works
* Difference between INNER JOIN and LEFT JOIN
* How SQL handles missing relationships using NULL
* Real-world use cases of relational joins

---

# 📁 Project Structure

```id="r49"
day4_left_join.sql
README.md
```

---

# 🚀 Next Step

Possible next topics:

* RIGHT JOIN
* FULL JOIN
* UPDATE query
* DELETE query
* Foreign Keys
* Subqueries

---

Consistency builds skill.
One query a day. Strong fundamentals forever.
