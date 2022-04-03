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
  private Long secondarySchoolGpa;

  private String interSchool;
  private Long interSchoolPassedOutYear;
  private Long interGpa;

  private String underGradSchool;
  private Long underGradSchoolPassedOutYear;
  private Long underGradGpa;
  private Long underGradBacklogCount;

  private String postGradSchool;
  private Long postGradSchoolPassedOutYear;
  private Long postGradGpa;
  private Long postGradBacklogCount;
}
