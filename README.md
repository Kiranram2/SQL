# SQL
library-management-sql-project

# 📚 Library Management SQL Project

## 📌 Overview
This project demonstrates a **Library Management Database** built using **MySQL Workbench**.  
It manages members, books, and borrow records, with queries for tracking issued/returned books and usage trends.  

## 🗂️ Files
- schema.sql → Table creation scripts  
- data.sql → Sample dataset  
- queries.sql → Example queries  
- README.md → Documentation  

## 🛠️ Database Schema
- members(member_id, name, email, join_date)  
- books(book_id, title, author, genre, published_year)  
- borrow_records(record_id, member_id, book_id, borrow_date, return_date)  

## 📊 Example Queries
- Find all borrowed books not yet returned  
- Find the most borrowed books  
- Find active members with borrow history  

## 🚀 How to Run
1. Clone repository  
2. Run `schema.sql`  
3. Run `data.sql`  
4. Run queries from `queries.sql`  

## 👤 Author
Kunja Kiranmai | kiranmaikunja232@gmail.com | www.linkedin.com/in/kiranmai-k-9a0ba524b
