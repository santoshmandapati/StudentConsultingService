package com.fifo.edu.jpa;

import com.fifo.edu.model.Student;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepository extends CrudRepository<Student, Long> {

}
