package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class StudentPreferences {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long studentPreferencesId;

  @OneToOne
  @JoinColumn(name = "student_id")
  @JsonBackReference
  private Student student;

  private String preferredIntake;
  private String preferredCountry;
  private String preferredProgram;
  private String preferredFeeRange;
}
