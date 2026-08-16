# MySQL Data Analysis

A SQL and relational database project focused on querying, transforming, and analyzing data within a **MySQL relational database**.

The project uses the **MavenMovies** database, a relational database representing a movie rental business. The repository contains structured SQL queries covering data retrieval, filtering, aggregation, grouping, sorting, conditional logic, joins, set operations, and relational data concepts.

The project demonstrates practical SQL skills relevant to **backend software engineering and database-driven applications**.

---

## 🗄️ Database

The project uses the **MavenMovies** database, which models a movie rental system with entities such as:

- Films
- Actors
- Customers
- Rentals
- Payments
- Stores
- Staff
- Categories

The database provides a relational environment for working with interconnected entities and querying structured business data.

---

## ⚙️ SQL Capabilities

The repository covers the following SQL capabilities:

### Data Retrieval

- `SELECT`
- `DISTINCT`

### Filtering

- `WHERE`
- `AND`
- `OR`
- `IN`
- `LIKE`

### Aggregation

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

### Grouping

- `GROUP BY`
- Multiple-column grouping
- Group filtering with `HAVING`

### Sorting

- `ORDER BY`
- Multiple-column ordering
- Ordering grouped results
- Ordering using expressions

### Conditional Logic

- `CASE`
- Multiple `CASE` expressions
- Conditional classification

### Relational Queries

- `INNER JOIN`
- `LEFT JOIN`
- Multiple-table queries
- Working with primary and foreign key relationships

### Set Operations

- `UNION`

### Database Design

- Relational data modeling
- Primary keys
- Foreign keys
- Entity relationships
- Normalization
- 1NF
- 2NF
- 3NF

---

## 📂 Project Structure

```text
mysql-data-analysis/
│
├── database/
│   └── create_mavenmovies.sql
│
├── queries/
│   ├── 01-basic-select.sql
│   ├── 02-distinct.sql
│   ├── 03-filtering.sql
│   ├── 04-filtering-and.sql
│   ├── 05-filtering-or.sql
│   ├── 06-filtering-in.sql
│   ├── 07-filtering-like.sql
│   ├── 08-group-by-rating.sql
│   ├── 09-group-by-rental-duration.sql
│   ├── ...
│   └── ...
│
├── .gitattributes
└── README.md
```

The SQL queries are organized into separate files according to their functionality and database operation.

---

## 🛠️ Technologies

- **MySQL**
- **SQL**
- **Git**
- **GitHub**

---

## 🚀 Setup

### Clone the repository

```bash
git clone https://github.com/MarcelNota/mysql-data-analysis.git
```

### Navigate to the project

```bash
cd mysql-data-analysis
```

### Create the database

Execute:

```text
database/create_mavenmovies.sql
```

using a MySQL-compatible database client.

### Select the database

```sql
USE mavenmovies;
```

### Execute the queries

The SQL scripts are located in the `queries/` directory and can be executed individually against the `mavenmovies` database.

---

## 🔎 Example

A typical query in the project combines relational operations with aggregation:

```sql
SELECT
    film.title,
    COUNT(film_actor.actor_id) AS actor_count
FROM film
LEFT JOIN film_actor
    ON film.film_id = film_actor.film_id
GROUP BY film.title;
```

This query demonstrates:

- `LEFT JOIN`
- Relationship traversal
- `COUNT()`
- `GROUP BY`
- Column aliasing

These are common SQL patterns when implementing database access in backend applications.

---

## 🎯 Backend Engineering Relevance

Relational databases are a fundamental component of backend systems.

The SQL implemented in this project represents operations commonly required by backend applications, including:

- Retrieving entities
- Filtering records
- Aggregating data
- Joining related entities
- Applying business rules
- Working with relational constraints
- Producing structured query results

These operations form the foundation for database access layers implemented through technologies such as **JDBC, JPA, Hibernate, and Spring Data**.

---

## 📌 Project Status

**Active**

The repository contains a growing collection of SQL implementations against the MavenMovies relational database.

---

## 👨‍💻 Author

**Marcel Nota**

Backend Software Engineering
Java · Spring Boot · SQL · Relational Databases · REST APIs · Microservices

[GitHub](https://github.com/MarcelNota)
