# LibraryDB

A relational database project developed with **Microsoft SQL Server** and **SQL Server Management Studio (SSMS)**.

The project simulates a library management system, covering authors, books, physical book copies, students, and loans.

## 📚 Project Overview

LibraryDB was created as a practical project to study and apply fundamental concepts of relational databases, including:

- Database creation
- Table creation
- Primary Keys
- Foreign Keys
- Relationships between tables
- Data types
- `NULL` values
- Database normalization concepts
- SQL Server / SSMS workflow

## 🗂️ Database Structure

The database contains five main tables:

| Table | Description |
|---|---|
| `Author` | Stores book authors |
| `Book` | Stores book titles and their authors |
| `BookCopy` | Represents physical copies of books |
| `Student` | Stores students registered in the library |
| `Loan` | Records book loans and returns |

### Relationships

```text
Author
  │
  └── 1:N ── Book
                │
                └── 1:N ── BookCopy
                              │
                              └── 1:N ── Loan ── N:1 ── Student
```

A book represents a title, while `BookCopy` represents each physical copy of that title.

For example, a library may have one book title with several physical copies. Each copy can be borrowed over time, generating multiple loan records.

## 🛠️ Technologies

- **Microsoft SQL Server**
- **SQL Server Management Studio (SSMS)**
- **SQL**
- **Git**
- **GitHub**

## 📁 Project Structure

```text
LibraryDB/
├── README.md
└── librarydb.sql
```

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone <repository-url>
```

### 2. Open the SQL script

Open `librarydb.sql` using SQL Server Management Studio.

### 3. Execute the script

Run the script to create the `librarydb` database and its tables.

## 🎯 Learning Goals

This project is part of my studies in **Software Engineering** and is being developed to strengthen my understanding of relational databases and SQL Server.

The project will evolve as new database concepts are learned and applied.

## 📌 Future Improvements

Planned improvements include:

- Insert sample data
- Practice `INSERT`, `UPDATE` and `DELETE`
- Create queries using `SELECT`
- Practice `JOIN`
- Add constraints and validation rules
- Create reports using SQL queries
- Improve database design as new concepts are learned

## 👨‍💻 Author

**Willian Kauê da Cruz Campos**

Software Engineering Student