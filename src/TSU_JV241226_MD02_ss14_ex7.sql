create database book_manager;
use book_manager;

#Bảng Book:
CREATE TABLE Books
(
    id             INT PRIMARY KEY,
    title          VARCHAR(100)   NOT NULL,
    author         VARCHAR(50)    NOT NULL,
    published_year YEAR           NOT NULL,
    price          DECIMAL(10, 2) NOT NULL
);
#Bảng Member:
CREATE TABLE Member
(
    id    INT PRIMARY KEY,
    name  VARCHAR(50) not null,
    email VARCHAR(20) not null
);

#Thêm dữ liệu vào bảng
INSERT INTO Books(id, title, author, published_year, price)
VALUES (1, 'Clean Code', 'Robert C. Martin', 2008, 55.00),
       (2, 'The Pragmatic Programmer', 'Andrew Hunt', 2019, 62.99),
       (3, 'Introduction to Algorithms', 'Thomas H. Cormen', 2022, 89.50),
       (4, 'Design Patterns', 'Erich Gamma', 2004, 74.99),
       (5, 'Effective Java', 'Joshua Bloch', 2018, 58.45),
       (6, 'You Don\'t Know JS', 'Kyle Simpson', 2020, 52.00),
       (7, 'Domain-Driven Design', 'Eric Evans', 2003, 66.80),
       (8, 'Refactoring', 'Martin Fowler', 2019, 59.99),
       (9, 'Code Complete', 'Steve McConnell', 2004, 71.00),
       (10, 'The Clean Coder', 'Robert C. Martin', 2011, 54.95),
       (11, 'Working Effectively with Legacy Code', 'Michael Feathers', 2013, 61.00),
       (12, 'Head First Design Patterns', 'Eric Freeman', 2021, 57.30),
       (13, 'Python Crash Course', 'Eric Matthes', 2023, 50.00),
       (14, 'Deep Learning with Python', 'François Chollet', 2021, 68.00),
       (15, 'The Art of Computer Programming', 'Donald Knuth', 2011, 120.00),
       (16, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 2020, 85.99),
       (17, 'Modern Operating Systems', 'Andrew S. Tanenbaum', 2023, 93.25),
       (18, 'Computer Networking: Top Down Approach', 'Kurose & Ross', 2022, 77.10),
       (19, 'Hands-On Machine Learning with Scikit-Learn', 'Aurélien Géron', 2022, 69.80),
       (20, 'Grokking Algorithms', 'Aditya Bhargava', 2016, 52.20);

INSERT INTO Member(id, name, email)
VALUES (1, 'Alice Nguyen', 'alice@ex.com'),
       (2, 'Bob Tran', 'bob@ex.com'),
       (3, 'Charlie Pham', 'charlie@ex.com'),
       (4, 'David Le', 'david@ex.com'),
       (5, 'Eva Hoang', 'eva@ex.com'),
       (6, 'Frank Do', 'frank@ex.com'),
       (7, 'Grace Huynh', 'grace@ex.com'),
       (8, 'Hannah Vu', 'hannah@ex.com'),
       (9, 'Ivan Bui', 'ivan@ex.com'),
       (10, 'Julia Dang', 'julia@ex.com'),
       (11, 'Kevin Nguyen', 'kevin@ex.com'),
       (12, 'Linda Truong', 'linda@ex.com'),
       (13, 'Michael Vo', 'mike@ex.com'),
       (14, 'Nina Ha', 'nina@ex.com'),
       (15, 'Oscar Lam', 'oscar@ex.com'),
       (16, 'Peter Phan', 'peter@ex.com'),
       (17, 'Quincy Ngo', 'quincy@ex.com'),
       (18, 'Rachel Mai', 'rachel@ex.com'),
       (19, 'Sam Le', 'sam@ex.com'),
       (20, 'Tina Chau', 'tina@ex.com');

#Viết truy vấn để lấy tất cả sách có giá lớn hơn 50.
SELECT *
FROM Books
WHERE price > 50;

#Sắp xếp danh sách sách theo giá từ thấp đến cao.
SELECT *
FROM Books
ORDER BY price;

#Đếm số lượng sách do mỗi tác giả viết.
SELECT Books.author, count(Books.id) AS 'quantity'
FROM Books
GROUP BY author;