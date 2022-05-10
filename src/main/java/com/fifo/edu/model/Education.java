package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Education {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long educationId;

  @OneToOne
  @JoinColumn(name = "student_id")
  @JsonBackReference
  private Student student;

  private String secondarySchool;
  private Long secondarySchoolPassedOutYear;
  private String secondarySchoolGpa;

  private String interSchool;
  private Long interSchoolPassedOutYear;
  private String interGpa;

  private String underGradSchool;
  private String underGradCourseMajor;
  private Long underGradSchoolPassedOutYear;
  private String underGradGpa;
  private Long underGradBacklogCount;

  private String postGradSchool;
  private String postGradCourseMajor;
  private Long postGradSchoolPassedOutYear;
  private String postGradGpa;
  private Long postGradBacklogCount;
}
