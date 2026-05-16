# 📘 MySQL Practice – Day 6 (DELETE Query)

## 🧠 Objective

Learn how to remove specific records from a table using the `DELETE` query in MySQL.

This query is commonly used in real-world database systems for removing unwanted or outdated data.

---

# 🏗️ Database Selection

```sql id="rm61"
USE data_source;
```

### Explanation

* Selects the database named:

```id="rm62"
data_source
```

* All upcoming operations will be performed inside this database.

---

# 🗑️ DELETE Query

```sql id="rm63"
DELETE FROM data1
WHERE id = 5;
```

---

# 🔍 Line-by-Line Explanation

## `DELETE FROM data1`

* Targets the table:

```id="rm64"
data1
```

* Indicates that rows will be removed from this table.

---

## `WHERE id = 5`

* Deletes only the row where:

```id="rm65"
id = 5
```

This condition is very important because it prevents accidental deletion of all records.

---

# ⚠️ Important Safety Concept

Without `WHERE`:

```sql id="rm66"
DELETE FROM data1;
```

💀 All rows inside the table would be deleted.

The table structure would remain, but the data would be completely removed.

---

# 📌 Verify Before Deleting

Professional workflow:

```sql id="rm67"
SELECT * FROM data1
WHERE id = 5;
```

This helps confirm which row will be deleted.

---

# 📌 Verify After Deleting

```sql id="rm68"
SELECT * FROM data1;
```

This confirms whether the record was successfully removed.

---

# 🌍 Real-World Usage

DELETE queries are used in:

| System            | Example                          |
| ----------------- | -------------------------------- |
| E-commerce        | Remove cancelled orders          |
| Hospital          | Delete duplicate patient records |
| Social Media      | Delete posts/comments            |
| HR Systems        | Remove inactive employee data    |
| School Management | Delete withdrawn student records |

---

# ⚡ Key Difference

| DELETE                  | DROP                    |
| ----------------------- | ----------------------- |
| Removes rows            | Removes entire table    |
| Table structure remains | Table structure removed |
| Can use WHERE           | Cannot use WHERE        |

---

# 🎯 Learning Outcome

After completing this task, I understood:

* How to delete specific records using `DELETE`
* Importance of the `WHERE` clause
* Risks of deleting data without conditions
* Real-world usage of deletion operations

---

# 📁 Project Structure

```id="rm69"
day6_delete_query.sql
README.md
```

---

# 🚀 Next Step

Possible next topics:

* ALTER TABLE
* FOREIGN KEY
* SUBQUERY
* LIMIT
* CASE statement
* Stored Procedures

---

SQL doesn’t forgive careless queries.
One safe query today prevents disaster tomorrow.
