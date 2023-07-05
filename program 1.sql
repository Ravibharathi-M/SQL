create database class;
use class;
create table class(
id int,
name varchar(10),
age int,
major varchar(10));
insert into class values(1,'Ravi',21,'ECE');
insert into class values(2,'Sham',19,'EEE');
insert into class values(3,'Sibi',18,'CSE');
insert into class values(4,'Mani',17,'AIDS');
insert into class values(5,'Gokul',35,'IT');
select * from class;
  select * from class
  where major='CSE';
  select*from class
  where age = (select max(age) from class);
  drop database class;
  update class set major='CS' where id='3';
  delete  from class where id='5';