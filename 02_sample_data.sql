USE student_management;

INSERT INTO departments (department_name, office_location) VALUES
('Computer Applications', 'Block A'),
('Information Technology', 'Block B'),
('Commerce', 'Block C');

INSERT INTO students
(first_name, last_name, email, phone, date_of_birth, admission_date, department_id)
VALUES
('Aarav', 'Shah', 'aarav.shah@example.com', '9876500001', '2005-02-14', '2024-06-10', 1),
('Diya', 'Patel', 'diya.patel@example.com', '9876500002', '2004-11-03', '2023-06-12', 2),
('Kabir', 'Mehta', 'kabir.mehta@example.com', '9876500003', '2005-07-21', '2024-06-10', 1),
('Anaya', 'Desai', 'anaya.desai@example.com', '9876500004', '2004-04-18', '2023-06-12', 3),
('Vivaan', 'Joshi', 'vivaan.joshi@example.com', '9876500005', '2005-09-09', '2024-06-10', 2),
('Isha', 'Trivedi', 'isha.trivedi@example.com', '9876500006', '2004-12-27', '2023-06-12', 1);

INSERT INTO faculty (faculty_name, email, department_id, hire_date) VALUES
('Neha Sharma', 'neha.sharma@example.com', 1, '2020-07-01'),
('Rahul Verma', 'rahul.verma@example.com', 2, '2019-08-15'),
('Mira Rao', 'mira.rao@example.com', 3, '2021-01-10');

INSERT INTO courses (course_code, course_name, credits, department_id, faculty_id) VALUES
('CA101', 'Database Management Systems', 4, 1, 1),
('CA102', 'Python Programming', 4, 1, 1),
('IT201', 'Web Technology', 3, 2, 2),
('IT202', 'Computer Networks', 3, 2, 2),
('CM301', 'Business Communication', 2, 3, 3),
('CA103', 'Data Analytics Fundamentals', 3, 1, 1);

INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2024-07-01', 86.50),
(1, 2, '2024-07-01', 91.00),
(1, 6, '2024-07-02', 88.00),
(2, 3, '2023-07-03', 79.50),
(2, 4, '2023-07-03', 82.00),
(3, 1, '2024-07-01', 74.00),
(3, 2, '2024-07-01', 80.50),
(4, 5, '2023-07-05', 89.00),
(5, 3, '2024-07-02', NULL),
(5, 4, '2024-07-02', NULL);
