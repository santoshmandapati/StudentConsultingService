package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

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

  @OneToOne
  @JoinColumn(name = "university_id")
  private University university;

  private String course;
  private String intakeSeason;
  private String intakeYear;
  private String applicationFee;
  private Boolean isWaiverApplied;
  private String waiverCode;
  private String agent;
  private String status;

  private String listOrderId;

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    ShortListedUniversities that = (ShortListedUniversities) o;
    return Objects.equals(listOrderId, that.listOrderId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(listOrderId);
  }
}
