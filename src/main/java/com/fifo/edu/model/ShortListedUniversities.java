package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class ShortListedUniversities {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long shortListedUniversitiesId;

  @ManyToOne
  @JoinColumn(name = "student_id")
  @JsonBackReference
  private Student student;

  private String name;
  private String course;
  private String degree;
  private String country;
  private String applicationFee;
  private String status;
}
