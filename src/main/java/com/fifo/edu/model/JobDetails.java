package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class JobDetails {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long jobDetailsId;

  @OneToOne
  @JoinColumn(name = "student_id")
  @JsonBackReference
  private Student student;

  private String yearsExperience;
  private String jobTitle;
}
