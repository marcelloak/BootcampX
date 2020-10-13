SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) AS duration
FROM assistance_requests JOIN assignments ON assignment_id = assignments.id
JOIN students ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
ORDER BY duration;