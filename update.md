# 🔹 Day 5 — UPDATE Query

Until now:

* You created data
* Read data
* Joined data

Today:
👉 You’ll learn how to **modify existing data**

This is dangerous power. One wrong UPDATE can destroy production data. Real companies are paranoid about this query 😄

---

# 📌 Day 5 Query

```sql id="d5q1"
UPDATE data1
SET marks = 95
WHERE name = 'Arun';
```

---

# 🧠 What This Does

Find:

```id="d5q2"
Arun
```

Then change:

```id="d5q3"
marks → 95
```

---

# 🔍 Line-by-Line Explanation

## `UPDATE data1`

👉 Target table:

```id="d5q4"
data1
```

You’re saying:

> “I want to modify this table.”

---

## `SET marks = 95`

👉 Change value of:

```id="d5q5"
marks
```

to:

```id="d5q6"
95
```

---

## `WHERE name = 'Arun'`

👉 Critical safety filter.

Without WHERE:

```sql id="d5q7"
UPDATE data1
SET marks = 95;
```

💀 ALL rows become 95.

Every beginner does this once. The database gods demand sacrifice.

---

# 📌 Verify Changes

Always verify after UPDATE:

```sql id="d5q8"
SELECT * FROM data1;
```

---

# 🌍 Real-World Examples

UPDATE is used everywhere:

| System     | Example                |
| ---------- | ---------------------- |
| Banking    | Update account balance |
| Hospital   | Update patient status  |
| E-commerce | Update order status    |
| HR System  | Update employee salary |
| School App | Update student marks   |

---

# ⚠️ Golden Rule of UPDATE

Before UPDATE:

```sql id="d5q9"
SELECT * FROM table WHERE condition;
```

Check affected rows first.

Then run UPDATE.

Professional habit. Saves disasters.

---

# 🔥 Advanced Thinking

This query:

```sql id="d5q10"
UPDATE data1
SET marks = marks + 5
WHERE department = 'Physics';
```

👉 increases marks dynamically.

Not fixed replacement.
Actual computation.

Very common in real systems.

---

# 📁 GitHub Task Title

**“Understanding UPDATE Query and Safe Data Modification in MySQL”**

---

# 🎯 Learning Outcome

Today you learned:

* How to modify existing records
* Importance of WHERE clause
* Risk of mass updates
* Real-world usage of UPDATE queries

---

# 📘 README Closing Line

> “With great SQL power comes great responsibility.” 😄

Because one missing WHERE can create chaos faster than bad JavaScript.
