create database BooksDB;
use BooksDB;
drop database BooksDB;
create table Books(
 s_no int  primary key,
 Booktitle varchar(50),
 Author varchar(50),
 genre varchar(50),
 publication_year int,
 price int);
 create table authors(
 se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint fk_s_no foreign key(s_no) references Books(s_no));

INSERT into Books VALUES(1,"Price and prejudice","Jane Austen","Classic",1813,550);
INSERT into  Books VALUES(2,"To kill a Mockingbird","Harper Lee","Fiction",1960,600);
INSERT into  Books VALUES(3,"Price prejudice","Dystopian","Classic",1949,700);
INSERT into  Books VALUES(4,"The Great Gatsby","F.Scott Fitzgerald","Classic",1925,850);
INSERT into  Books VALUES(5,"The Catcher in the Rye","J.D Salinger","Fiction",1951,540);
 
insert into authors values(1,20,"Dubai","William",5);
insert into authors values(2,25,"Bombay","Zombie",2);
insert into authors values(3,30,"Sidney","Walter Elias Disney",4);
insert into authors values(4,40,"Darjiling","Wright Brothers",3);
 
select * from Books;
SELECT * FROM Books
WHERE Booktitle = 'To kill a Mockingbird'; 
UPDATE Books SET price = "1000" WHERE price=550;

DELETE from Books
WHERE Booktitle = "Price and Prejudice";

select * from Books;
select avg(price) from books;
 
SELECT * FROM authors INNER JOIN Books ON authors.se_no=Books.s_no ORDER BY author_age;
