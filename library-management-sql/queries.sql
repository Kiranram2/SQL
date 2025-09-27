-- queries.sql
-- Analytical queries for Library Management System

USE library_db;

-- 1. Members who currently have borrowed books (not returned)
SELECT m.name, b.title, r.borrow_date
FROM members m
JOIN borrow_records r ON m.member_id = r.member_id
JOIN books b ON r.book_id = b.book_id
WHERE r.return_date IS NULL;

-- 2. Most borrowed books
SELECT b.title, COUNT(*) AS times_borrowed
FROM borrow_records r
JOIN books b ON r.book_id = b.book_id
GROUP BY b.book_id
ORDER BY times_borrowed DESC;

-- 3. Total books borrowed by each member
SELECT m.name, COUNT(r.record_id) AS total_borrowed
FROM members m
LEFT JOIN borrow_records r ON m.member_id = r.member_id
GROUP BY m.member_id
ORDER BY total_borrowed DESC;

-- 4. Borrow history of a specific member (example: Rahul Mehta)
SELECT m.name, b.title, r.borrow_date, r.return_date
FROM members m
JOIN borrow_records r ON m.member_id = r.member_id
JOIN books b ON r.book_id = b.book_id
WHERE m.name = 'Rahul Mehta';