SELECT s.StudentId, s.FirstName, s.LastName, c.CourseName
FROM Student s
JOIN Enrolment e ON s.StudentId = e.StudentId
JOIN Course c ON e.CourseId = c.CourseId;