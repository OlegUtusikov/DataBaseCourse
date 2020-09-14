-- insert into tables

insert into Groups (id, number)
    values (1, 'М3436'),
           (2, 'M3333'),
           (3, 'М3239'),
           (4, 'M3435');

insert into Teachers (id, name, role)
    values (1, 'teacher1', 1),
           (2, 'teacher2', 1),
           (3, 'teacher3', 2),
           (4, 'teacher4', 2);

 insert into Subjects (id, title, descr, teacher_id)
    values (1, 'Algem', 'Vectors and matrix', 1),
           (2, 'DataBase', 'Creation of databases', 3),
           (3, 'Data structures', 'Trees and graphs', 4);

insert into Students (id, name, age)
    values (1, 'Oleg Utusikov', 21),
           (2, 'Ivan Burakov', 23),
           (3, 'Sergey Balahnin', 21),
           (4, 'Galina Grigorieva', 20),
           (5, 'Андрей Комаров', 4);

insert into StudentsGroups (student_id, group_id)
    values (1, 1),
           (2, 3),
           (3, 1),
           (4, 4);

insert into StudentsSubjects (student_id, subject_id, mark)
    values (1, 1, 1),
           (1, 2, 1),
           (1, 3, 1),
           (3, 2, 1),
           (3, 3, 1),
           (4, 1, 1);

-- Check props

select id, number from Groups;
select id, name, role from Teachers;
select id, title, descr, teacher_id from Subjects;
select id, name, age from Students;
select student_id, group_id from StudentsGroups;
select student_id, subject_id, mark from StudentsSubjects;
select id, name from Students where id in (select student_id from StudentsGroups where group_id = 1) ORDER BY age;
