# 📘 MySQL Practice – Day 7 (ALTER TABLE)

## 🧠 Objective

Learn how to modify the structure of an existing table using the `ALTER TABLE` statement in MySQL.

This operation is widely used in real-world applications when database requirements change over time.

---

# 🏗️ Database Selection

```sql id="rd71"
USE data_source;
```

### Explanation

* Selects the database:

```id="rd72"
data_source
```

* All operations will be performed inside this database.

---

# 🧱 Existing Table

Table used:

```id="rd73"
data1
```

This table already contains student-related information.

---

# 🔧 ALTER TABLE Query

```sql id="rd74"
ALTER TABLE data1
ADD email VARCHAR(100);
```

---

# 🔍 Line-by-Line Explanation

## `ALTER TABLE data1`

* Targets the table:

```id="rd75"
data1
```

* Indicates that the structure of the table will be modified.

---

## `ADD email VARCHAR(100)`

Adds a new column:

```id="rd76"
email
```

with datatype:

```id="rd77"
VARCHAR(100)
```

This means:

* The column stores text data
* Maximum length = 100 characters

---

# 📌 Verify Table Structure

```sql id="rd78"
DESCRIBE data1;
```

### Expected Result

The table structure will now include:

| Field | Type         |
| ----- | ------------ |
| email | varchar(100) |

---

# 🌍 Real-World Usage

`ALTER TABLE` is commonly used when applications evolve.

Examples:

| System     | Example                   |
| ---------- | ------------------------- |
| E-commerce | Add product_rating column |
| Banking    | Add transaction_status    |
| HR System  | Add salary field          |
| Hospital   | Add blood_group column    |
| School App | Add attendance_percentage |

---

# ⚠️ Important Concept

`ALTER TABLE` changes the schema (structure) of the database.

Unlike:

* `INSERT` → adds data
* `UPDATE` → changes data
* `DELETE` → removes data

`ALTER TABLE` changes the actual design of the table.

---

# 🔥 Other Common ALTER Operations

## Rename Column

```sql id="rd79"
ALTER TABLE data1
RENAME COLUMN name TO student_name;
```

---

## Modify Datatype

```sql id="rd710"
ALTER TABLE data1
MODIFY marks DECIMAL(5,2);
```

---

## Drop Column

```sql id="rd711"
ALTER TABLE data1
DROP COLUMN email;
```

---

# 🎯 Learning Outcome

After completing this task, I understood:

* How to modify table structure using `ALTER TABLE`
* How to add new columns
* Difference between schema changes and data changes
* Real-world use cases of schema evolution

---

# 📁 Project Structure

```id="rd712"
day7_alter_table.sql
README.md
```

---

# 🚀 Next Step

Possible next topics:

* LIMIT
* FOREIGN KEY
* SUBQUERY
* CASE Statement
* Constraints
* Stored Procedures

---

Databases grow like cities.
`ALTER TABLE` is how engineers redesign the roads without collapsing traffic.
