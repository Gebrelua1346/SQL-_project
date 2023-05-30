
create database  students; 
use students

--1. create two tables and connect tables using FOREIGN KEY.

create table xx_students
(Index_no int not null primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null
);
insert xx_students values(324408,'Gebrelua','Geremew'),(324409,'Anita','Emiru'),(324410,'Marckane','Endalk')

create table xx_students_courses
(index_no int foreign key references xx_students(index_no),
  course_no int,
  note int,
);

--2. create query to select students with all notes.

insert xx_students_courses values (324408,1010,80),(324408,2020,70),(324408,3030,76),(324408,3030,57),
(324409,1010,78),(324409,2020,69),(324409,3030,56),(324409,3030,95),
(324410,1010,85),(324410,2020,76),(324410,3030,50),(324410,3030,100)

--3.create query, that select:firstname,lastname and average note and order by the highest average note

select us.first_name,us.last_name,AVg(uxs.note) as average_note
from xx_students us
join xx_students_courses uxs on us.index_no=uxs.index_no
group by us.first_name,us.last_name
order by avg(note) DESC;




