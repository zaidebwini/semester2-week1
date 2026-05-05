SELECT s.StudentId, s.FirstName, s.LastName, SUM(c.Credits) AS TotalCreditsPassed
FROM Student s
JOIN Enrolment e ON s.StudentId = e.StudentId
JOIN Course c ON e.CourseId = c.CourseId
WHERE e.Grade >= 40
GROUP BY s.StudentId, s.FirstName, s.LastName;