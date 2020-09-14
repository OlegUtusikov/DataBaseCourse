create table StudentsSubjects (
    student_id int NOT NULL,
    subject_id int NOT NULL,
    mark int NOT NULL,
    PRIMARY KEY (student_id, subject_id)
);

create table Students (
    id int PRIMARY KEY,
    name varchar(30) NOT NULL,
    age int NOT NULL
);

create table Subjects (
    id int PRIMARY KEY,
    title varchar(15) NOT NULL,
    descr varchar(200) NOT NULL,
    teacher_id int NOT NULL
);

create table Groups (
    id int PRIMARY KEY,
    number char(5) NOT NULL
);

create table Teachers (
    id int PRIMARY KEY,
    name varchar(30) NOT NULL, 
    role int NOT NULL
);

create table StudentsGroups (
    student_id int,
    group_id   int
);

alter table StudentsGroups add CONSTRAINT FK_group FOREIGN KEY (group_id) REFERENCES Groups(id);
alter table StudentsGroups add CONSTRAINT FK_student FOREIGN KEY (student_id) REFERENCES Students(id);

alter table StudentsSubjects add CONSTRAINT FK_student FOREIGN KEY (student_id) REFERENCES Students(id);
alter table StudentsSubjects add CONSTRAINT FK_subject FOREIGN KEY (subject_id) REFERENCES Subjects(id);

alter table Subjects add CONSTRAINT FK_teacher FOREIGN KEY (teacher_id) REFERENCES Teachers(id);
