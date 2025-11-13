create table Students (
    studentID int Primary key,
    name varchar(50),
    major varchar(50)
);

create table Courses (
    courseID int primary key,
    courseName varchar(50),
    credits int
);

create table Grades (
    gradeID int primary key,
    studentID int,
    courseID int,
    grade Decimal(5,2),
    Foreign key (studentID) references Students(studentID),
    Foreign key (courseID) references Courses(courseID)
);