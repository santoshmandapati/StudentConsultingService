package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class ExamScores {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long examScoresId;

  @OneToOne
  @JoinColumn(name = "student_id")
  @JsonBackReference
  private Student student;

  private String greOverallScore;
  private String greQuantScore;
  private String greVerbalScore;
  private String greAwaScore;

  private String englishTestType;
  private String englishOverallScore;
  private String englishListeningScore;
  private String englishSpeakingScore;
  private String englishWritingScore;
  private String englishReadingScore;
}
