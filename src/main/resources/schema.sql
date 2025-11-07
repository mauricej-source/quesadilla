CREATE TABLE Subject (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1024)
);

CREATE TABLE Course (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1024),
    duration_in_months INT NOT NULL
);

CREATE TABLE Course_Subject (
    course_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    PRIMARY KEY (course_id, subject_id),
    FOREIGN KEY (course_id) REFERENCES Course(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);

CREATE TABLE Student (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    date_of_enrollment DATE NOT NULL
);

CREATE TABLE Student_Course (
    student_id BIGINT NOT NULL,
    course_id BIGINT NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (course_id) REFERENCES Course(id)
);
