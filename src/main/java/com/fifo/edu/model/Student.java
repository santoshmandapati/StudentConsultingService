package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;
import java.util.*;

@Data
@Entity
public class Student {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long studentId;
  private String firstName;
  private String lastName;
  private String email;
  private String phone;

  private String gender;
  private Date dob;

  private String loginEmail;

  private String loginPassword;

  @OneToOne
  @JoinColumn(name = "consultancy_id")
  private Consultancy consultancy;

  @OneToOne
  @JoinColumn(name = "country_id")
  private Country country;

  @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
  @JsonManagedReference
  private Education education;

  @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
  @JsonManagedReference
  private ExamScores examScores;

  @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
  @JsonManagedReference
  private JobDetails jobDetails;

  @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
  @JsonManagedReference
  private StudentPreferences studentPreferences;

  @OneToMany(mappedBy="student", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
  @JsonManagedReference
  private Set<ShortListedUniversities> shortListedUniversities;

  @OneToOne(mappedBy = "student", cascade = CascadeType.ALL)
  @JsonManagedReference
  private Status status;

  @Override
  public String toString() {
    return "Student{" +
        "studentId=" + studentId +
        ", firstName='" + firstName + '\'' +
        ", lastName='" + lastName + '\'' +
        ", email='" + email + '\'' +
        '}';
  }
}
