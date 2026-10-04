-- --Create a simple Library Management System using Book and Member tables.
-- 1. Create both tables with suitable attributes.
-- 2. Apply Primary Key, Foreign Key, NOT NULL, UNIQUE, and DEFAULT constraints.
-- 3. Insert at least 5 books and 3 members.
-- 4. Display books belonging to a particular category.
-- 5. Update the availability status of a book.
-- 6. Delete a book based on its ID.
-- 7. Add a new column to the Book table using ALTER.
-- 8. Rename the Book table using RENAME.
-- 9. Display the records after performing the operations.

CREATE DATABASE library_magsystem;
USE library_magsystem;


CREATE TABLE Member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) UNIQUE,
    membership_type VARCHAR(20) DEFAULT 'Regular'
);
CREATE TABLE Book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    availability VARCHAR(20) DEFAULT 'Available',
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

INSERT INTO Member (member_name, email, phone)
VALUES 
('DHUVI1','DHUVI1@gmail.com',9877238715),
('DHUVI2','DHUVI2@gmail.com',9877238716),
('DHUVI3','DHUVI3@gmail.com',9877238717);

INSERT INTO Book 
(title, author, category,availability, member_id)
VALUES
('Book1','A1','C1',DEFAULT,1),
('Book2','A2','C2',DEFAULT,2),
('Book3','A3','C3',DEFAULT,3),
('Book4','A4','C4',DEFAULT,NULL),
('Book5','A5','C1',DEFAULT,NULL);

SELECT * FROM book where category ='c1';

UPDATE Book SET availability = 'Not Available' where book_id = 3;

DELETE FROM Book WHERE book_id = 5;

ALTER TABLE Book ADD Column publisher Varchar (100) Default 'unknown';

RENAME TABLE Book to Library_book;

Select * From Library_book;

Select * From Member;






