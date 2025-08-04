CREATE DATABASE artexppoo;
GO
USE artexppoo;
GO
CREATE TABLE Exhibit (
exhibit
id INT PRIMARY KEY,
_
name NVARCHAR(100),
location NVARCHAR(100),
exhibit
date DATE
_
);
CREATE TABLE Artist (
artist
id INT PRIMARY KEY,
_
name NVARCHAR(100),
country NVARCHAR(50),
birth
_year INT
);
CREATE TABLE Artwork (
art
id INT PRIMARY KEY,
_
title NVARCHAR(100),
artist
_
id INT FOREIGN KEY REFERENCES Artist(artist
_
id),
price DECIMAL(10, 2),
exhibit
_
id INT FOREIGN KEY REFERENCES Exhibit(exhibit
_
id)
);
CREATE TABLE Visitor (
visitor
id INT PRIMARY KEY,
_
name NVARCHAR(100),
email NVARCHAR(100)
);
CREATE TABLE Ticket (
ticket
id INT PRIMARY KEY,
_
visitor
_
id INT FOREIGN KEY REFERENCES Visitor(visitor
_
exhibit
_
id INT FOREIGN KEY REFERENCES Exhibit(exhibit
_
purchase
date DATE
_
id),
id),
);
CREATE TABLE Payment (
payment
id INT PRIMARY KEY,
_
ticket
_
id INT FOREIGN KEY REFERENCES Ticket(ticket
_
amount DECIMAL(10, 2),
payment
date DATE,
_
method NVARCHAR(50)
id),
);
CREATE TABLE Staff (
staff
id INT PRIMARY KEY,
_
name NVARCHAR(100),
role NVARCHAR(50),
salary DECIMAL(10, 2),
exhibit
_
id INT FOREIGN KEY REFERENCES Exhibit(exhibit
_
hire
date DATE
_
id),
);
INSERT INTO Exhibit VALUES
(1,
(2,
(3,
(4,
(5,
'Modern Art'
,
'Gallery A'
,
'2025-05-10'),
'Classic Paintings'
,
'Gallery B'
,
'2025-06-15'),
'Photography Expo'
,
'Gallery C'
,
'2025-07-20'),
'Sculpture Showcase'
,
'Gallery D'
,
'2025-08-05'),
'Digital Art'
,
'Gallery E'
,
'2025-09-01');
INSERT INTO Artist VALUES
(1,
(2,
(3,
(4,
(5,
'Alice Smith'
'USA'
,
, 1985),
'Mohamed Hassan'
,
'Egypt'
, 1978),
'Li Wei'
'China'
,
, 1990),
'Maria Garcia'
,
'Spain'
, 1982),
'John Brown'
'UK'
,
, 1975);
INSERT INTO Artwork VALUES
(1,
(2,
(3,
(4,
(5,
'Sunrise'
, 1, 500.00, 1),
'Nile View'
, 2, 700.00, 2),
'Urban Lights'
, 3, 600.00, 3),
'Flamenco Dance'
, 4, 800.00, 4),
'London Fog'
, 5, 550.00, 5);
INSERT INTO Visitor VALUES
(1,
(2,
(3,
(4,
(5,
'John Doe'
,
'john@example.com'),
'Sarah Lee'
,
'sarah@example.com'),
'Ahmed Ali'
,
'ahmed@example.com'),
'Emily Chen'
,
'emily@example.com'),
'Carlos Martinez'
,
'carlos@example.com');
INSERT INTO Ticket VALUES
(1, 1, 1,
'2025-05-01'),
(2, 2, 2,
'2025-06-10'),
(3, 3, 3,
'2025-07-15'),
(4, 4, 4,
'2025-08-01'),
(5, 5, 5,
'2025-09-05');
INSERT INTO Payment VALUES
(1, 1, 50.00,
'2025-05-01'
,
'Credit Card'),
(2, 2, 60.00,
'2025-06-10'
,
'Cash'),
(3, 3, 70.00,
(4, 4, 80.00,
(5, 5, 90.00,
'2025-07-15'
,
'2025-08-01'
,
'2025-09-05'
,
'Credit Card'),
'Debit Card'),
'Credit Card');
INSERT INTO Staff VALUES
(1,
(2,
(3,
(4,
(5,
'Mary Johnson'
,
'Manager'
, 3000.00, 1,
'2024-01-10'),
'Ali Fahmy'
'Guide'
,
, 2000.00, 2,
'2024-02-12'),
'Sophia Wang'
'Curator'
,
, 3500.00, 3,
'2024-03-15'),
'Miguel Perez'
,
'Security'
, 1800.00, 4,
'2024-04-18'),
'Emma Brown'
'Technician'
,
, 2500.00, 5,
'2024-05-20');
SELECT * FROM Exhibit;
SELECT * FROM Artist;
SELECT * FROM Artwork;
SELECT * FROM Visitor;
SELECT * FROM Ticket;
SELECT * FROM Payment;
SELECT * FROM Staff;
SELECT COUNT(*) AS CreditCardPayments FROM Payment WHERE method = 'Credit
Card';
SELECT
Visitor.name AS VisitorName,
Exhibit.name AS ExhibitName,
Payment.amount
FROM Payment
JOIN Ticket ON Payment.ticket
id = Ticket.ticket
id
_
_
JOIN Visitor ON Ticket.visitor
id = Visitor.visitor
id
_
_
JOIN Exhibit ON Ticket.exhibit
id = Exhibit.exhibit
_
_
id;
UPDATE Staff SET salary = salary * 1.10 WHERE role = 'Technician';
SELECT staff
_
id, name, role, salary FROM Staff WHERE role = 'Technician';
UPDATE Visitor SET email = 'ahmed.ali@newmail.com' WHERE name = 'Ahmed Ali';
SELECT * FROM Visitor WHERE name = 'Ahmed Ali';
DELETE FROM Ticket WHERE purchase
date < '2025-06-01';
_
SELECT COUNT(*) AS remaining_
tickets FROM Ticket;
DELETE FROM Artwork WHERE price < 600;
SELECT * FROM Artwork;
