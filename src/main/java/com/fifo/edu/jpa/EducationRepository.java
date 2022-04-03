package com.fifo.edu.jpa;

import com.fifo.edu.model.Education;
import org.springframework.data.repository.CrudRepository;

public interface EducationRepository extends CrudRepository<Education, Long> {
}
