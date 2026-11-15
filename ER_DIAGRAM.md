# Entity Relationship Diagram

```mermaid
erDiagram
    DEPARTMENTS ||--o{ STUDENTS : has
    DEPARTMENTS ||--o{ FACULTY : employs
    DEPARTMENTS ||--o{ COURSES : offers
    FACULTY o|--o{ COURSES : teaches
    STUDENTS ||--o{ ENROLLMENTS : registers
    COURSES ||--o{ ENROLLMENTS : contains

    DEPARTMENTS {
        int department_id PK
        varchar department_name UK
        varchar office_location
    }
    STUDENTS {
        int student_id PK
        varchar first_name
        varchar last_name
        varchar email UK
        varchar phone
        date date_of_birth
        date admission_date
        int department_id FK
    }
    FACULTY {
        int faculty_id PK
        varchar faculty_name
        varchar email UK
        int department_id FK
        date hire_date
    }
    COURSES {
        int course_id PK
        varchar course_code UK
        varchar course_name
        tinyint credits
        int department_id FK
        int faculty_id FK
    }
    ENROLLMENTS {
        int enrollment_id PK
        int student_id FK
        int course_id FK
        date enrollment_date
        decimal grade
    }
```

## Relationship explanation
- `departments` to `students`: one-to-many.
- `departments` to `faculty`: one-to-many.
- `departments` to `courses`: one-to-many.
- `faculty` to `courses`: one-to-many; a course may have no assigned faculty yet.
- `students` to `courses`: many-to-many, resolved using `enrollments`.
- A unique constraint on `(student_id, course_id)` prevents a student from enrolling in the same course twice.
