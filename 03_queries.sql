USE student_management;

-- 1. Display all students with their department names.
SELECT s.student_id,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       s.email,
       d.department_name
FROM students AS s
JOIN departments AS d ON d.department_id = s.department_id
ORDER BY s.student_id;

-- 2. Display students enrolled in each course.
SELECT c.course_code,
       c.course_name,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       e.enrollment_date,
       e.grade
FROM enrollments AS e
JOIN students AS s ON s.student_id = e.student_id
JOIN courses AS c ON c.course_id = e.course_id
ORDER BY c.course_code, student_name;

-- 3. Count enrollments per course, including courses with zero enrollments.
SELECT c.course_code,
       c.course_name,
       COUNT(e.enrollment_id) AS total_students
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_code, c.course_name
ORDER BY total_students DESC, c.course_code;

-- 4. Average grade per course (NULL grades are ignored by AVG).
SELECT c.course_name,
       ROUND(AVG(e.grade), 2) AS average_grade
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name
ORDER BY c.course_name;

-- 5. Students who are not enrolled in any course.
SELECT s.student_id,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name
FROM students AS s
LEFT JOIN enrollments AS e ON e.student_id = s.student_id
WHERE e.enrollment_id IS NULL;

-- 6. Courses that currently have no enrollments.
SELECT c.course_code, c.course_name
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.course_id
WHERE e.enrollment_id IS NULL;

-- 7. Faculty members and the courses they teach.
SELECT f.faculty_name,
       c.course_code,
       c.course_name
FROM faculty AS f
LEFT JOIN courses AS c ON c.faculty_id = f.faculty_id
ORDER BY f.faculty_name, c.course_code;

-- 8. Students with a grade of 85 or above.
SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       c.course_name,
       e.grade
FROM enrollments AS e
JOIN students AS s ON s.student_id = e.student_id
JOIN courses AS c ON c.course_id = e.course_id
WHERE e.grade >= 85
ORDER BY e.grade DESC;

-- 9. Total students in each department.
SELECT d.department_name,
       COUNT(s.student_id) AS total_students
FROM departments AS d
LEFT JOIN students AS s ON s.department_id = d.department_id
GROUP BY d.department_id, d.department_name
ORDER BY total_students DESC;

-- 10. Update example: assign a grade after assessment.
-- UPDATE enrollments
-- SET grade = 87.50
-- WHERE student_id = 5 AND course_id = 3;
