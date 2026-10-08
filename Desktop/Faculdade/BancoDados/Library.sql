CREATE DATABASE librarydb;
GO

USE librarydb;

DROP DATABASE IF EXISTS librarydb;
GO

CREATE TABLE Author (
	id_author INT PRIMARY KEY,
	name_author VARCHAR(80) NOT NULL
);

CREATE TABLE Book (
	id_book INT PRIMARY KEY,
	Title VARCHAR(100) NOT NULL,
	id_author INT NOT NULL,
	FOREIGN KEY (id_author) REFERENCES Author(id_author)
);

CREATE TABLE BookCopy (
	id_bcopy INT PRIMARY KEY,
	id_book INT NOT NULL,
	FOREIGN KEY (id_book) REFERENCES Book(id_book),
	status VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
	matriculation INT PRIMARY KEY,
	name_student VARCHAR(100) NOT NULL,
	grade TINYINT NOT NULL
);

CREATE TABLE Loan (
	id_loan INT PRIMARY KEY,
	matriculation INT NOT NULL,
	FOREIGN KEY (matriculation) REFERENCES Student(matriculation),
	id_bcopy INT NOT NULL,
	FOREIGN KEY (id_bcopy) REFERENCES BookCopy(id_bcopy),
	loan_date DATE NOT NULL,
	return_date DATE NULL
);

