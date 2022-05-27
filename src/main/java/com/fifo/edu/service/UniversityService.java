package com.fifo.edu.service;

import com.fifo.edu.jpa.UniversityRepository;
import com.fifo.edu.model.Student;
import com.fifo.edu.model.University;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class UniversityService {

  @Autowired
  public UniversityRepository universityRepository;

  public List<University> findAll() {
    return StreamSupport.stream(universityRepository.findAll().spliterator(), false)
        .collect(Collectors.toList());
  }
}
