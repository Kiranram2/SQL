-- data.sql
-- Sample data for Library Management System

USE library_db;

-- Insert Members
INSERT INTO members (name, email, join_date) VALUES
('Rahul Mehta','rahul@example.com','2024-01-15'),
('Sneha Kapoor','sneha@example.com','2024-03-10'),
('Amit Sharma','amit@example.com','2024-05-20'),
('Priya Nair','priya@example.com','2024-06-12');

-- Insert Books
INSERT INTO books (title, author, genre, published_year) VALUES
('Atomic Habits','James Clear','Self-help',2018),
('The Alchemist','Paulo Coelho','Fiction',1988),
('Data Science for Beginners','Andrew Ng','Education',2020),
('Harry Potter and the Sorcerer''s Stone','J.K. Rowling','Fantasy',1997),
('Rich Dad Poor Dad','Robert Kiyosaki','Finance',1997);

-- Insert Borrow Records
INSERT INTO borrow_records (member_id, book_id, borrow_date, return_date) VALUES
(1,1,'2025-09-01','2025-09-10'),
(2,2,'2025-09-05',NULL),
(3,3,'2025-09-07','2025-09-15'),
(4,4,'2025-09-10',NULL);