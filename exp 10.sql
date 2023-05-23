CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
course_id INT,
age INT
);

INSERT INTO students (student_id, name, course_id, age) VALUES
(1, 'John Doe', 101, 22),
(2, 'Jane Smith', 102, 21),
(3, 'Bob Johnson', 103, 23),
(4, 'Emily Brown', 101, 20),
(5, 'Mark Davis', 104, 22);

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
instructor VARCHAR(50),
department VARCHAR(50)
);

INSERT INTO courses (course_id, course_name, instructor, department) VALUES
(101, 'Introduction to Computer Science', 'Professor X', 'Computer Science'),
(102, 'Data Structures and Algorithms', 'Professor Y', 'Computer Science'),
(103, 'Database Systems', 'Professor Z', 'Computer Science'),
(104, 'Software Engineering', 'Professor W', 'Computer Science'),
(105, 'Calculus', 'Professor A', 'Mathematics');

-- Select all students and their associated courses
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

-- Select all students and their associated courses, including students with no courses
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;

-- Select all courses and their associated students, including courses with no students
SELECT students.name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

-- Select all students and courses, including students with no courses and courses with no students
SELECT students.name, courses.course_name
FROM students
FULL OUTER JOIN courses
ON students.course_id = courses.course_id;