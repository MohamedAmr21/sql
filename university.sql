CREATE DATABASE UniversityManagement;
GO

USE UniversityManagement;
GO




-- CREATE TABLE Departments
-- (
--     DepartmentId INT PRIMARY KEY IDENTITY(1,1),
--     DepartmentName VARCHAR(50) NOT NULL
  
-- );
-- GO


-- CREATE TABLE Students
-- (
--     StudentId INT PRIMARY KEY IDENTITY(1,1),
--     FirstName VARCHAR(50) NOT NULL,
--     SecondName VARCHAR(50) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     DepartmentId INT NOT NULL,
--     EnrollmentDate DATE NOT NULL

--     CONSTRAINT FK_STUDENTS_DEPARTMENTS
--         FOREIGN KEY (DepartmentId)
--         REFERENCES Departments(DepartmentId)
-- );
-- GO

-- ALTER TABLE Students
-- ADD age INT;


-- CREATE TABLE Courses
-- (
--     CourseId INT PRIMARY KEY IDENTITY(1,1),
--     CourseName VARCHAR(50) NOT NULL,
--     Credits INT NOT NULL,
--     DepartmentId INT NOT NULL

--     CONSTRAINT FK_Courses_DEPARTMENTS
--         FOREIGN KEY (DepartmentId)
--         REFERENCES Departments(DepartmentId)
  
-- );
-- GO

-- CREATE TABLE Instructors
-- (
--     InstructorId INT PRIMARY KEY IDENTITY(1,1),
--     FirstName VARCHAR(50) NOT NULL,
--     SecondName VARCHAR(50) NOT NULL,
--     DepartmentId INT NOT NULL,
--     Salary DECIMAL(10,2) NOT NULL

--     CONSTRAINT FK_Instructors_Departments
--         FOREIGN KEY (DepartmentId)
--         REFERENCES Departments(DepartmentId)
  
-- );
-- GO


-- CREATE TABLE Enrollments
-- (
--     EnrollmentId INT PRIMARY KEY IDENTITY(1,1),
--     StudentId INT NOT NULL,
--     CourseId INT NOT NULL,
--     EnrollmentDate DATE NOT NULL,
--     Grade DECIMAL(10,2)

 
--     CONSTRAINT  FK_Enrollments_Courses 
--         FOREIGN KEY (CourseId)
--         REFERENCES Courses(CourseId),

--     CONSTRAINT  FK_Enrollments_Students
--         FOREIGN KEY (StudentId)
--         REFERENCES Students(StudentId)
  
-- );
-- GO



-- CREATE TABLE Course_Instructors
-- (
--     CourseId INT NOT NULL,
--     InstructorId INT NOT NULL,

--     PRIMARY KEY (CourseId, InstructorId),

--     CONSTRAINT FK_CourseInstructors_Courses
--         FOREIGN KEY (CourseId)
--         REFERENCES Courses(CourseId),

--     CONSTRAINT FK_CourseInstructors_Instructors
--         FOREIGN KEY (InstructorId)
--         REFERENCES Instructors(InstructorId)
-- );
-- GO


INSERT INTO Departments (DepartmentName)
VALUES
('Computer Science'),
('Information Technology'),
('Electronics and Communication'),
('Business Administration'),
('Mechanical Engineering');
GO


-- INSERT INTO Students
--     (FirstName, SecondName, email, age, DepartmentId, EnrollmentDate)
-- VALUES
-- ('Ahmed', 'Hassan', 'ahmed.hassan@university.com', 20, 1, '2024-09-15'),
-- ('Mohamed', 'Ali', 'mohamed.ali@university.com', 21, 1, '2023-09-20'),
-- ('Omar', 'Mahmoud', 'omar.mahmoud@university.com', 22, 2, '2022-09-18'),
-- ('Youssef', 'Ibrahim', 'youssef.ibrahim@university.com', 20, 3, '2024-09-15'),
-- ('Mariam', 'Khaled', 'mariam.khaled@university.com', 21, 4, '2023-09-20'),
-- ('Sara', 'Mostafa', 'sara.mostafa@university.com', 22, 1, '2022-09-18'),
-- ('Karim', 'Adel', 'karim.adel@university.com', 23, 2, '2021-09-15'),
-- ('Nour', 'Samir', 'nour.samir@university.com', 20, 3, '2024-09-15'),
-- ('Hana', 'Tarek', 'hana.tarek@university.com', 21, 4, '2023-09-20'),
-- ('Adam', 'Fathy', 'adam.fathy@university.com', 22, 5, '2022-09-18');
-- GO

INSERT INTO Courses
    (CourseName, credits, DepartmentId)
VALUES
('Database Systems', 3, 1),
('Data Structures', 3, 1),
('Web Development', 3, 2),
('Computer Networks', 3, 2),
('Digital Electronics', 4, 3),
('Communication Systems', 3, 3),
('Business Management', 3, 4),
('Accounting', 3, 4),
('Thermodynamics', 4, 5),
('Engineering Mechanics', 3, 5);
GO


INSERT INTO Instructors
    (FirstName, SecondName, DepartmentId, Salary)
VALUES
('John', 'Smith', 1, 85000.00),
('Michael', 'Brown', 1, 78000.00),
('David', 'Wilson', 2, 82000.00),
('Robert', 'Taylor', 2, 75000.00),
('James', 'Anderson', 3, 90000.00),
('William', 'Thomas', 3, 88000.00),
('Daniel', 'Jackson', 4, 70000.00),
('Richard', 'White', 4, 68000.00),
('Thomas', 'Harris', 5, 92000.00),
('Christopher', 'Martin', 5, 86000.00);
GO


INSERT INTO Enrollments
    (StudentId, CourseId, EnrollmentDate, Grade)
VALUES
-- Ahmed
(1, 1, '2024-09-20', 88.00),
(1, 2, '2024-09-20', 92.00),
(1, 3, '2024-09-21', 85.00),

-- Mohamed
(2, 1, '2023-09-25', 95.00),
(2, 2, '2023-09-25', 89.00),
(2, 4, '2023-09-26', 91.00),

-- Omar
(3, 3, '2022-09-23', 78.00),
(3, 4, '2022-09-23', 84.00),

-- Youssef
(4, 5, '2024-09-20', 90.00),
(4, 6, '2024-09-20', 87.00),

-- Mariam
(5, 7, '2023-09-25', 93.00),
(5, 8, '2023-09-25', 88.00),

-- Sara
(6, 1, '2022-09-22', 97.00),
(6, 2, '2022-09-22', 94.00),
(6, 3, '2022-09-23', 91.00),

-- Karim
(7, 3, '2021-09-20', 82.00),
(7, 4, '2021-09-20', 79.00),

-- Nour
(8, 5, '2024-09-21', 96.00),
(8, 6, '2024-09-21', 89.00),

-- Hana
(9, 7, '2023-09-25', 85.00),
(9, 8, '2023-09-25', 90.00),

-- Adam
(10, 9, '2022-09-22', 88.00),
(10, 10, '2022-09-22', 91.00);
GO


INSERT INTO Course_Instructors
    (CourseId, InstructorId)
VALUES
-- Computer Science
(1, 1),  -- Database Systems -> John Smith
(1, 2),  -- Database Systems -> Michael Brown
(2, 2),  -- Data Structures -> Michael Brown

-- Information Technology
(3, 3),  -- Web Development -> David Wilson
(4, 4),  -- Computer Networks -> Robert Taylor

-- Electronics
(5, 5),  -- Digital Electronics -> James Anderson
(6, 6),  -- Communication Systems -> William Thomas

-- Business
(7, 7),  -- Business Management -> Daniel Jackson
(8, 8),  -- Accounting -> Richard White

-- Mechanical
(9, 9),  -- Thermodynamics -> Thomas Harris
(10, 10); -- Engineering Mechanics -> Christopher Martin
GO

-- 1
SELECT CONCAT(FirstName,SecondName) AS FullName,Email FROM Students;

-- 2

SELECT
    CONCAT(FirstName, ' ', SecondName) AS FullName,
    age,
    CASE
        WHEN age < 20 THEN 'Young'
        WHEN age BETWEEN 20 AND 22 THEN 'Adult'
        WHEN age > 22 THEN 'Senior Student'
    END AS AgeCategory
FROM Students;

-- 3

 SELECT
    StudentId,
    FirstName,
    SecondName,
    ISNULL(email, 'No Email') AS email,
    age,
    DepartmentId,
    EnrollmentDate
FROM Students;


-- 4
SELECT
    StudentId,
    FirstName,
    SecondName,
    email
FROM Students
WHERE LOWER(LEFT(FirstName, 1)) = LOWER(RIGHT(SecondName, 1));

-- 5
SELECT CourseId,CourseName,Credits,DepartmentId 
FROM Courses 
WHERE Credits%2=0 
ORDER BY (Credits) DESC;

-- 6
SELECT
    DATEPART(YEAR, EnrollmentDate) AS EnrollmentYear,
    COUNT(*) AS StudentCount
FROM Students
GROUP BY  DATEPART(YEAR, EnrollmentDate)
ORDER BY EnrollmentYear;

-- 7
SELECT
    StudentId,
    FirstName,
    SecondName,
    EnrollmentDate
FROM Students
WHERE MONTH(EnrollmentDate) IN (1, 2, 3,4, 10, 11, 12);

-- 8
SELECT
    CONCAT(FirstName, ' ', SecondName) AS FullName
FROM Students
ORDER BY LEN(CONCAT(FirstName, SecondName)) DESC;


-- 9

SELECT * FROM Students
WHERE email LIKE '%'+ FirstName +'%' ;

-- 10
SELECT *,
CASE 
    WHEN Grade BETWEEN 90 AND 100 THEN 'Excellent'
    WHEN Grade BETWEEN 80 AND 89 THEN 'Very Good'
    WHEN Grade BETWEEN 70 AND 79 THEN 'Good'
    WHEN Grade BETWEEN 60 AND 69 THEN 'Pass'
    WHEN Grade <60 THEN 'Fail'
    END AS Grade_classification
FROM Enrollments 

-- 11

SELECT D.DepartmentName ,
COUNT(S.StudentId)*100.0 /
(SELECT COUNT(*)FROM Students) AS Percentage
FROM Students S
LEFT JOIN Departments D
ON S.DepartmentId=D.DepartmentId
GROUP BY D.DepartmentId,D.DepartmentName;


-- 12 WITHOUT TOP
SELECT D.DepartmentName,
COUNT(S.StudentId) AS StudentCount
FROM Students S
JOIN Departments D
ON S.DepartmentId=D.DepartmentId
GROUP BY D.DepartmentId,D.DepartmentName
HAVING COUNT(S.StudentId)=(
       SELECT MAX(StudentCount) 
       FROM(SELECT COUNT(StudentId) AS StudentCount
        FROM Students
        GROUP BY DepartmentId) AS DepartmentCounts
);

-- 12 WITH TOP
SELECT TOP 1
D.DepartmentName,
COUNT(S.StudentId) AS StudentCount
FROM Students S
JOIN Departments D
ON S.DepartmentId=D.DepartmentId
GROUP BY D.DepartmentId,D.DepartmentName;

-- 13


SELECT  TOP 1
        C.CourseName,AVG(E.Grade) AS Average_Grade
        FROM Enrollments E
JOIN Courses C
ON C.CourseId=E.CourseId
GROUP BY E.CourseId,C.CourseName;


-- 14


SELECT
    C.CourseName,
    COUNT(E.StudentId) AS TotalStudents,
    SUM(
        CASE
            WHEN E.Grade >= 60 THEN 1
            ELSE 0
        END
    ) * 100.0 / COUNT(E.StudentId) AS PassRate
FROM Courses AS C
JOIN Enrollments AS E
    ON C.CourseId = E.CourseId
GROUP BY C.CourseId, C.CourseName;

-- 15

SELECT CourseId, AVG(Grade) AS AverageGrades
FROM Enrollments
GROUP BY CourseId
HAVING AVG(Grade) > (SELECT AVG(Grade) FROM Enrollments);

-- 16

SELECT AVG(CourseCount * 1.0) AS AverageCoursesPerStudent
FROM
(
    SELECT
        StudentId,
        COUNT(CourseId) AS CourseCount
    FROM Enrollments
    GROUP BY StudentId
) AS StudentCourses;

-- 17
SELECT D.DepartmentName ,AVG(I.Salary) AS Average_Salary
FROM Instructors I
JOIN Departments D
ON   D.DepartmentId=I.DepartmentId
GROUP BY D.DepartmentId, D.DepartmentName
HAVING AVG(Salary)>(SELECT AVG(Salary) FROM Instructors)
ORDER BY (D.DepartmentName) DESC;


-- 18
SELECT TOP 3
    C.CourseName,
    COUNT(E.StudentId) AS EnrolledStudents,
    COUNT(E.StudentId) * 100.0 /
        (SELECT COUNT(*) FROM Enrollments) AS EnrollmentPercentage
FROM Courses AS C
JOIN Enrollments AS E
    ON C.CourseId = E.CourseId
GROUP BY C.CourseId, C.CourseName
ORDER BY COUNT(E.StudentId) DESC;

-- 19

SELECT
    CONCAT(I.FirstName, ' ', I.SecondName) AS Instructor_Name,
    COUNT(DISTINCT CI.CourseId) AS Number_Of_Courses,
    COUNT(E.StudentId) AS Number_Of_Students
FROM Instructors AS I
JOIN Course_Instructors AS CI
    ON I.InstructorId = CI.InstructorId
JOIN Courses AS C
    ON CI.CourseId = C.CourseId
JOIN Enrollments AS E
    ON C.CourseId = E.CourseId
GROUP BY
    I.InstructorId,
    I.FirstName,
    I.SecondName;

-- 20
SELECT TOP 1
D.DepartmentName ,AVG(E.Grade) AS Average_Grade
FROM Enrollments E
JOIN Students S 
ON S.StudentId=E.StudentId
JOIN Departments D
ON D.DepartmentId=S.DepartmentId
GROUP BY D.DepartmentId, D.DepartmentName ;

-- 21
SELECT CONCAT(S.FirstName,' ',S.SecondName) AS Student_Name,
       D.DepartmentName,
       C.CourseName,
       E.Grade 
FROM Students S
JOIN Departments D
ON D.DepartmentId=S.DepartmentId
JOIN Enrollments E
ON E.StudentId=S.StudentId
JOIN Courses C
ON C.CourseId=E.CourseId;


-- 22

SELECT
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    D.DepartmentName AS Department,
    C.CourseName AS Course,
    E.Grade
FROM Students AS S
JOIN Departments AS D
    ON S.DepartmentId = D.DepartmentId
LEFT JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
LEFT JOIN Courses AS C
    ON E.CourseId = C.CourseId;

-- 23

SELECT C.CourseName,E.StudentId,E.Grade
FROM Courses C
LEFT JOIN Enrollments E
ON E.CourseId=C.CourseId


-- 24
SELECT   D.DepartmentId,D.DepartmentName 
FROM Departments D
LEFT JOIN Students S
ON D.DepartmentId=S.DepartmentId
WHERE S.StudentId IS NULL;

-- 25


SELECT
    I.InstructorId,
    CONCAT(I.FirstName, ' ', I.SecondName) AS InstructorName
FROM Instructors AS I
LEFT JOIN Course_Instructors AS CI
    ON I.InstructorId = CI.InstructorId
WHERE CI.InstructorId IS NULL;

-- 26

SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    COUNT(E.CourseId) AS NumberOfCourses
FROM Students AS S
LEFT JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName;

-- 27 
SELECT  C.CourseId,
        C.CourseName,
        COUNT(E.CourseId) AS Number_Of_Courses
FROM Courses C
LEFT JOIN Enrollments E
ON C.CourseId=E.CourseId
GROUP BY C.CourseId,C.CourseName;

-- 28

SELECT  CONCAT(I.FirstName,' ',I.SecondName) InstructorName,
        I.DepartmentId,
        COUNT(CI.CourseId) NumberOfCourses,
        COUNT(E.StudentId) NumberOfStudents
FROM Instructors I
LEFT JOIN Course_Instructors CI
ON I.InstructorId=CI.InstructorId
LEFT JOIN Enrollments E
ON E.CourseId=CI.CourseId
GROUP BY I.FirstName,I.SecondName,I.DepartmentId,I.InstructorId;


-- 29
  
SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    D.DepartmentName,
    COUNT(E.CourseId) AS NumberOfCourses
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
JOIN Courses AS C
    ON E.CourseId = C.CourseId
JOIN Departments AS D
    ON C.DepartmentId = D.DepartmentId
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName,
    D.DepartmentId,
    D.DepartmentName
HAVING COUNT(E.CourseId) > 1;


-- 30
SELECT  S.StudentId,
        CONCAT(S.FirstName,' ',S.SecondName) StudentName,
        COUNT(DISTINCT C.DepartmentId) NumberOfDepartments
FROM Students S
JOIN Enrollments E
ON E.StudentId=S.StudentId
JOIN Courses C
ON C.CourseId=E.CourseId
GROUP BY S.StudentId,S.FirstName,S.SecondName
HAVING COUNT(DISTINCT C.DepartmentId)>1;

-- 31
SELECT  CONCAT(S.FirstName,' ',S.SecondName) StudentName,
        AVG(E.Grade) StudentsAveragesGrades,
        (SELECT AVG(Enrollments.Grade) FROM Enrollments) AverageGrades
FROM Enrollments E
JOIN Students S
ON S.StudentId=E.StudentId
GROUP BY E.StudentId,S.FirstName,S.SecondName
HAVING AVG(E.Grade) >  (SELECT AVG(Enrollments.Grade) FROM Enrollments);

-- 32



SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    E.Grade
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
WHERE E.Grade > ALL (
    SELECT E2.Grade
    FROM Students AS S2
    JOIN Enrollments AS E2
        ON S2.StudentId = E2.StudentId
    WHERE S2.DepartmentId = 2
);


-- 33

SELECT
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName
FROM Students AS S
JOIN Enrollments AS E
    ON E.StudentId = S.StudentId
WHERE E.Grade > (
    SELECT AVG(E2.Grade)
    FROM Students AS S2
    JOIN Enrollments AS E2
        ON E2.StudentId = S2.StudentId
    WHERE S2.DepartmentId = S.DepartmentId
)
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName;


-- 34

SELECT
    C.CourseId,
    C.CourseName
FROM Courses AS C
JOIN Enrollments AS E
    ON C.CourseId = E.CourseId
GROUP BY
    C.CourseId,
    C.CourseName
HAVING MIN(E.Grade) >= 60;

-- 35

SELECT
    D.DepartmentId,
    D.DepartmentName
FROM Departments AS D
JOIN Students AS S
    ON D.DepartmentId = S.DepartmentId
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
GROUP BY
    D.DepartmentId,
    D.DepartmentName
HAVING MIN(E.Grade) >= 60;


-- 36


SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
LEFT JOIN (
    SELECT DISTINCT CourseId
    FROM Enrollments
    WHERE StudentId = 5
) AS TargetCourses
    ON E.CourseId = TargetCourses.CourseId
WHERE S.StudentId <> 5
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName
HAVING
    COUNT(DISTINCT E.CourseId) = (
        SELECT COUNT(DISTINCT CourseId)
        FROM Enrollments
        WHERE StudentId = 5
    )
    AND COUNT(DISTINCT TargetCourses.CourseId) = (
        SELECT COUNT(DISTINCT CourseId)
        FROM Enrollments
        WHERE StudentId = 5
    );


-- 37


SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName
FROM Students AS S
WHERE EXISTS (
    SELECT 1
    FROM Enrollments AS E
    JOIN Courses AS C
        ON E.CourseId = C.CourseId
    WHERE E.StudentId = S.StudentId
      AND C.CourseName = 'Data Structures'
)
AND NOT EXISTS (
    SELECT 1
    FROM Enrollments AS E
    JOIN Courses AS C
        ON E.CourseId = C.CourseId
    WHERE E.StudentId = S.StudentId
      AND C.CourseName = 'Digital Electronics'
);


-- 38

SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    COUNT(E.CourseId) AS NumberOfCourses
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName
HAVING COUNT(E.CourseId) > (
    SELECT AVG(CourseCount * 1.0)
    FROM (
        SELECT
            StudentId,
            COUNT(CourseId) AS CourseCount
        FROM Enrollments
        GROUP BY StudentId
    ) AS StudentCourses
);

-- 39

-- Without offset
SELECT
    I.InstructorId,
    CONCAT(I.FirstName, ' ', I.SecondName) AS InstructorName,
    I.Salary
FROM Instructors AS I
WHERE I.Salary = (
    SELECT MAX(I2.Salary)
    FROM Instructors AS I2
    WHERE I2.Salary < (
        SELECT MAX(I3.Salary)
        FROM Instructors AS I3
    )
);


-- with offset
SELECT
    InstructorId,
    CONCAT(FirstName, ' ', SecondName) AS InstructorName,
    Salary
FROM Instructors
ORDER BY Salary DESC
OFFSET 1 ROW
FETCH NEXT 1 ROW ONLY;


-- 40

SELECT
    S.StudentId,
    CONCAT(S.FirstName, ' ', S.SecondName) AS StudentName,
    AVG(E.Grade) AS AverageGrade
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentId = E.StudentId
GROUP BY
    S.StudentId,
    S.FirstName,
    S.SecondName
ORDER BY AVG(E.Grade) DESC
OFFSET 1 ROW
FETCH NEXT 1 ROW ONLY;