package com.fifo.edu.jpa;

import com.fifo.edu.model.ExamScores;
import org.springframework.data.repository.CrudRepository;

public interface ExamScoresRepository  extends CrudRepository<ExamScores, Long> {
}
