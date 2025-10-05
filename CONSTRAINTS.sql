create database constraintsdb;
use constraintsdb;

#NOT NULL
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
ALTER TABLE persons modify Age int NOT NULL;
desc persons;

# UNIQUE 
ALTER TABLE PERSONS ADD UNIQUE(ID);
ALTER TABLE Persons ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

#PRIMARY KEY
ALTER TABLE Persons ADD PRIMARY KEY (ID);
ALTER TABLE PERSONS DROP PRIMARY KEY; 

#FOREIGN KEY
CREATE TABLE person1 (PersonID int PRIMARY KEY,
Last_name varchar(25),
First_name varchar(25));

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Person1(PersonID)
);

ALTER TABLE Orders 
ADD FOREIGN KEY (PersonID) REFERENCES Person1(PersonID);
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Person1(PersonID);

ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;

DESCRIBE ORDERS;

# CHECK 
ALTER TABLE PERSONS ADD constraint CHECK_AGE CHECK(AGE>=27);

#DEFAULT
ALTER TABLE Persons 
MODIFY age INT DEFAULT 18;

ALTER TABLE Persons 
ALTER COLUMN age SET DEFAULT 18;

use constraintsdb;
CREATE TABLE Orders1 (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id, product_id) -- composite primary key
);
CREATE TABLE Orders2 (
    order_id INT,
    product_id INT,
    constraint orders_pk PRIMARY KEY (order_id, product_id) -- composite primary key
);
select 1+2+null