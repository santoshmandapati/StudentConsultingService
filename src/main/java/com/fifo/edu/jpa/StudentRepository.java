package com.fifo.edu.jpa;

import com.fifo.edu.model.Consultancy;
import com.fifo.edu.model.Country;
import com.fifo.edu.model.Student;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface StudentRepository extends CrudRepository<Student, Long> {
  List<Student> findByConsultancy(Consultancy consultancy);

  List<Student> findByConsultancyAndCountry(Consultancy consultancy, Country country);
}
