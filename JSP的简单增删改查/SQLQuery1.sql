CREATE DATABASE Students
use Students
CREATE TABLE Student
(
  id int identity(1,1) not null primary key,
  studentNumber char(10) not null,
  studentName char(10) not null,
  studentSex char(3) null,
  studentAge int null,
  studentWeight decimal null
)
INSERT INTO Student VALUES('1001','????','??',20,120)
select * from student