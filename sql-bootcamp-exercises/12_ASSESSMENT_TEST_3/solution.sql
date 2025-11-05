CREATE TABLE
    students (
        student_id SERIAL PRIMARY KEY,
        last_name VARCHAR(50) NOT NULL CHECK(last_name ~* '^[a-z]+$'),
        homeroom_number SMALLINT CHECK (homeroom_number > 0),
        phone VARCHAR(20) NOT NULL UNIQUE CHECK(phone ~ '^[+]?[0-9-]{6,20}$'),
        email VARCHAR(100) UNIQUE CHECK(email ~* '^[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z]{2,10}$'),
        graduation_year SMALLINT NOT NULL CHECK(graduation_year > 0)
    );

CREATE TABLE 
    teachers (
        teacher_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL CHECK(first_name ~* '^[a-z]+$'),
        last_name VARCHAR(50) NOT NULL CHECK(last_name ~* '^[a-z]+$'),
        homeroom_number SMALLINT CHECK (homeroom_number > 0),
        department VARCHAR(50),
        phone VARCHAR(20) NOT NULL UNIQUE CHECK(phone ~ '^[+]?[0-9-]{6,20}$'),
        email VARCHAR(100) NOT NULL UNIQUE CHECK(email ~* '^[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z]{2,10}$')
    );

INSERT INTO
    students (
        first_name,
        last_name,
        homeroom_number,
        phone,
        graduation_year
    )
VALUES
    ('Mark', 'Watney', 5, '7755551234', 2035);

INSERT INTO
    teachers (
        first_name,
        last_name,
        homeroom_number,
        department,
        email,
        phone
    )
VALUES
    (
        'Jonas',
        'Salk',
        5,
        'Biology',
        'jsalk@school.org',
        '7755554321'
    );