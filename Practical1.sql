
CREATE TABLE Product(
ProductId INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(500),
Categroy VARCHAR(255),
Price INT CHECK (Price >= 0)
);

--DROP TABLE Product;
ALTER TABLE Product
ADD Description VARCHAR(255);


INSERT INTO Product(ProductName, Categroy, Price, Description)
VALUES('Vivo','Mobile',20000,'vivo is a world leading brand of innovative smartphones'),
('IPhone14','Mobile',100000,'Powerful. Beautiful. Durable. 5G'),
('Apple','Frute',30,'Is a frute'),
('Sanitizer','health',70,'use to clean Hands'),
('Medicine','health',567,'Take When You are not feeling well'),
('Injection','health',150,'Take when You have a fever'),
('Bat','sports',1000,'Used to play cricket'),
('Football','sports',500,'from Adidas'),
('Vollyball','sports',1100,'from Nike'),
('T-shirts','clothing',1000,'mens wear clothing'),
('Shorts','clothing',500,'summer fashion');

select * FROM Product;

--List all the products belonging to health category
SELECT * FROM Product WHERE Categroy='health';

--Total price of all products
SELECT SUM(Price) AS 'GrandTotal' FROM Product;

--Products in descending order of price
SELECT ProductName, Price FROM Product ORDER BY Price DESC

--Category wise product count having price greater than 10000
SELECT COUNT(ProductId) AS 'NumberofProducts', Categroy FROM Product WHERE Price > 10000 GROUP BY Categroy;
SELECT COUNT(ProductId)  AS 'NumberofProducts', Categroy  FROM Product  GROUP BY Categroy HAVING SUM(Price)> 10000;











