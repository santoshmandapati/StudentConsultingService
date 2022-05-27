package com.fifo.edu.jpa;

import com.fifo.edu.model.University;
import org.springframework.data.repository.CrudRepository;

public interface UniversityRepository extends CrudRepository<University, Long> {
}
