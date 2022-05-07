--having clause syntax
--SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) HAVING condition ORDER BY column_name(s);

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;



--Constrains

  --NOT NULL Constrains
--  The NOT NULL constraint enforces a column to NOT accept NULL values.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);



--UNIQUE KEY CONSTRAIN
--The UNIQUE constraint ensures that all values in a column are different.
--
--Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
--
--A PRIMARY KEY constraint automatically has a UNIQUE constraint.
--
--However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

CREATE TABLE Persons (
    ID int  UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

--SECOND WAY
ALTER TABLE Persons
ADD UNIQUE (ID);



--PRIMARY KEY Constraint
--The PRIMARY KEY constraint uniquely identifies each record in a table.
--
--Primary keys must contain UNIQUE values, and cannot contain NULL values.
--
--A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).
CREATE TABLE Persons (
    ID int  PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

--SECOND WAY
ALTER TABLE Persons
ADD PRIMARY KEY (ID);



--FOREIGN KEY
--A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
--The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (ID) REFERENCES Persons(ID)
);


--CHECK Constrains
--The CHECK constraint is used to limit the value range that can be placed in a column.
--
--If you define a CHECK constraint on a column it will allow only certain values for this column.
--
--If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

CREATE TABLE suppliers (
  supplier_id numeric (4) CONSTRAINT ch_con CHECK (supplier_id >= 100),
  supplier_name varchar2 (50),
  gender varchar2 (5) CONSTRAINT c_con1 CHECK (gender in ('male', 'female')));

--SECOND WAY
ALTER TABLE suppliers
ADD CONSTRAINT check_gender
CHECK (gender IN ('male', 'Female'));























