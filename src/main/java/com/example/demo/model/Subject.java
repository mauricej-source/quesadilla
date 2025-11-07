package com.example.demo.model;

import jakarta.persistence.*;
import java.util.Set;

@Entity
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

    @ManyToMany(mappedBy = "subjects")
    private Set<Course> courses;

    // Getters and setters
}

