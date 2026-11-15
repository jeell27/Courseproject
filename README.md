# Student Management System — Mini Database Project

A beginner-friendly MySQL database capstone project demonstrating relational database design, primary and foreign keys, constraints, normalization, joins, aggregation, and useful reporting queries.

## Project overview
The database stores student, department, faculty, course, and enrollment information. It uses a many-to-many relationship between students and courses through the `enrollments` table.

## Tech stack
- MySQL 8.0+
- SQL
- MySQL Workbench (optional GUI)

## Repository structure
```text
student-management-database/
├── README.md
├── database/
│   ├── 01_schema.sql
│   ├── 02_sample_data.sql
│   └── 03_queries.sql
└── docs/
    └── ER_DIAGRAM.md
```

## How to run
1. Install MySQL 8.0+ and open MySQL Workbench or the MySQL command line.
2. Run `database/01_schema.sql` to create the database and tables.
3. Run `database/02_sample_data.sql` to insert example records.
4. Run `database/03_queries.sql` to test the reports and joins.

You can also run the files in order from a terminal:
```bash
mysql -u root -p < database/01_schema.sql
mysql -u root -p student_management < database/02_sample_data.sql
mysql -u root -p student_management < database/03_queries.sql
```

## Database design
| Table | Purpose |
|---|---|
| departments | Department master data |
| students | Student profile details |
| faculty | Faculty details, linked to a department |
| courses | Course details, linked to a department and faculty |
| enrollments | Connects students and courses; stores enrollment date and grade |

### Main relationships
- One department has many students.
- One department has many faculty members.
- One department offers many courses.
- One faculty member can teach many courses.
- Students and courses have a many-to-many relationship through `enrollments`.

## Example reports included
- List all students with their departments.
- List students enrolled in each course.
- Count students per course.
- Calculate average course grade (where grades are available).
- Find students who are not enrolled in any course.
- Find courses with no enrollments.
- Show faculty and the courses they teach.

## Design decisions
- Each table has a primary key.
- Foreign keys enforce referential integrity.
- `UNIQUE` constraints prevent duplicate department names, student emails, and course codes.
- `NOT NULL` constraints protect required fields.
- `CHECK` constraints validate credits and grades.
- The design is normalized to reduce repeated data and update anomalies.

## Future improvements
- Add attendance tracking.
- Add fee payment records.
- Build a Python/Flask or Java application on top of the database.
- Add role-based access for students, faculty, and administrators.

## Author
Add your name, course, institution, and submission date here before publishing.
