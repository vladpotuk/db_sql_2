CREATE DATABASE db_sql_2 y;

USE db_sql_2 ;

-- Створення таблиці "Groups"
CREATE TABLE Groups (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(10) NOT NULL UNIQUE,
    Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
    Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5)
);

-- Створення таблиці "Departments"
CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY,
    Financing MONEY NOT NULL DEFAULT 0 CHECK (Financing >= 0),
    Name NVARCHAR(100) NOT NULL UNIQUE
);

-- Створення таблиці "Faculties"
CREATE TABLE Faculties (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL UNIQUE
);

-- Створення таблиці "Teachers"
CREATE TABLE Teachers (
    Id INT PRIMARY KEY IDENTITY,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    Name NVARCHAR(MAX) NOT NULL,
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL
);
