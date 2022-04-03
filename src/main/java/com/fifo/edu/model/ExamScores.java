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

  private Long greOverallScore;
  private Long greQuantScore;
  private Long greVerbalScore;
  private Long greAwaScore;

  private String englishTestType;
  private Long englishOverallScore;
  private Long englishListeningScore;
  private Long englishSpeakingScore;
  private Long englishWritingScore;
  private Long englishReadingScore;
}
