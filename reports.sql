select s.name, c.courseName, g.grade
from Students s
join Grades g on s.studentID = g.studentID
join Courses c on g.courseID = c.courseID;

select s.name, AVG(g.grade) as avg_grade
from Students s
join Grades g ON s.studentID = g.studentID
group by s.name;

select s.name, AVG(g.grade) as avg_grade
from Students s
join Grades g on s.studentID = g.studentID
group by s.name
having AVG(g.grade) > 90;

select c.courseName, s.name, MAX(g.grade) as top_grade
from Grades g
join Students s on g.studentID = s.studentID
join Courses c on g.courseID = c.courseID
group by c.courseName, s.name;