package com.example.demo.model;

import jakarta.persistence.*;
import java.util.Set;

@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    private int durationInMonths;

    @ManyToMany
    @JoinTable(
        name = "Course_Subject",
        joinColumns = @JoinColumn(name = "course_id"),
        inverseJoinColumns = @JoinColumn(name = "subject_id")
    )
    private Set<Subject> subjects;

    @ManyToMany(mappedBy = "courses")
    private Set<Student> students;

    // Getters and setters
}

