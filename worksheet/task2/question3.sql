SELECT d.DepartmentName, COUNT(e.EnrolmentId) AS TotalEnrolments
FROM Department d
JOIN Course c ON d.DepartmentId = c.DepartmentId
JOIN Enrolment e ON c.CourseId = e.CourseId
GROUP BY d.DepartmentName;