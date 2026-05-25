# 📘 MySQL Practice – Day 8 (LIMIT Query)

## 🧠 Objective

Learn how to use the `LIMIT` clause in MySQL to control the number of rows returned from a table.

This is commonly used in:

* pagination
* dashboards
* APIs
* performance optimization

---

# 🏗️ Step-by-Step Execution

---

# 🔹 Step 1 — Select the Database

## ✅ Query

```sql id="st81"
USE data_source;
```

## 🎯 Purpose

* Selects the database:

```id="st82"
data_source
```

* Ensures all upcoming queries run inside the correct database.

---

# 🔹 Step 2 — Check Available Data

## ✅ Query

```sql id="st83"
SELECT * FROM data1;
```

## 🎯 Purpose

* Displays all rows from:

```id="st84"
data1
```

* Helps verify that the table contains records before applying `LIMIT`.

---

# 🔹 Step 3 — Apply LIMIT

## ✅ Query

```sql id="st85"
SELECT * FROM data1
LIMIT 3;
```

## 🎯 Purpose

* Returns only the first:

```id="st86"
3 rows
```

from the table.

* Helps reduce unnecessary data loading.

---

# 🔹 Step 4 — Use LIMIT with ORDER BY

## ✅ Query

```sql id="st87"
SELECT * FROM data1
ORDER BY marks DESC
LIMIT 1;
```

## 🎯 Purpose

* Sorts students by highest marks
* Returns only the top-scoring student

---

# 🔹 Step 5 — Pagination Style LIMIT

## ✅ Query

```sql id="st88"
SELECT * FROM data1
LIMIT 0, 3;
```

## 🎯 Purpose

* Starts from row index:

```id="st89"
0
```

* Fetches:

```id="st810"
3 rows
```

Used in:

* website pagination
* infinite scrolling
* APIs

---

# 🌍 Real-World Usage

| Platform     | LIMIT Usage                   |
| ------------ | ----------------------------- |
| YouTube      | Show first 10 videos          |
| Instagram    | Load 20 posts                 |
| Amazon       | Display products page-by-page |
| Banking Apps | Show latest transactions      |
| Admin Panels | Recent user activity          |

---

# ⚠️ Important Concept

Without `LIMIT`:

* huge datasets may load
* applications become slower
* APIs consume more resources

Efficient systems always control returned data.

---

# 🔥 Best Practice

Professional query style:

```sql id="st811"
SELECT * FROM data1
ORDER BY id ASC
LIMIT 5;
```

Reason:

* predictable output
* consistent pagination
* better performance

---

# 🎯 Learning Outcome

After completing this task, I understood:

* How to restrict query results
* How LIMIT improves performance
* Pagination basics
* Importance of ORDER BY with LIMIT

---

# 📁 Project Structure

```id="st812"
day8_limit_query.sql
README.md
```

---

# 🚀 Next Step

Possible next topics:

* FOREIGN KEY
* SUBQUERY
* CONSTRAINTS
* CASE Statement
* INDEXING
* STORED PROCEDURES

---

Databases can contain millions of rows.
`LIMIT` teaches discipline: fetch only what matters.
