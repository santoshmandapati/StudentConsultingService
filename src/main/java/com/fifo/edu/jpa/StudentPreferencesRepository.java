package com.fifo.edu.jpa;

import com.fifo.edu.model.StudentPreferences;
import org.springframework.data.repository.CrudRepository;

public interface StudentPreferencesRepository extends CrudRepository<StudentPreferences, Long> {
}
