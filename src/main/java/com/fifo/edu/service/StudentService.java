package com.fifo.edu.service;

import com.fifo.edu.jpa.*;
import com.fifo.edu.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class StudentService {

  @Autowired
  private StudentRepository studentRepository;

  @Autowired
  private EducationRepository educationRepository;

  @Autowired
  private ExamScoresRepository examScoresRepository;

  @Autowired
  private JobDetailsRepository jobDetailsRepository;

  @Autowired
  private StatusRepository statusRepository;

  @Autowired
  private StudentPreferencesRepository studentPreferencesRepository;

  public void create(Student student) {


    if(student.getEducation() != null) {
      Education education = student.getEducation();
      education.setStudent(student);
      //System.out.println(saved.getStudentId());
      //educationRepository.save(education);
    }
    if(student.getExamScores() != null) {
      ExamScores examScores = student.getExamScores();
      examScores.setStudent(student);
      //System.out.println(saved.getStudentId());
      //examScoresRepository.save(examScores);
    }
    if(student.getJobDetails() != null) {
      JobDetails jobDetails = student.getJobDetails();
      jobDetails.setStudent(student);
      //System.out.println(saved.getStudentId());
      //jobDetailsRepository.save(jobDetails);
    }
    if(student.getStudentPreferences() != null) {
      StudentPreferences studentPreferences = student.getStudentPreferences();
      studentPreferences.setStudent(student);
      //System.out.println(saved.getStudentId());
      //studentPreferencesRepository.save(studentPreferences);
    }
    if(student.getStatus() != null) {
      Status status = student.getStatus();
      status.setStudent(student);
      //System.out.println(saved.getStudentId());
      //statusRepository.save(status);
    }

    studentRepository.save(student);

  }

  public List<Student> findAll() {
    return StreamSupport.stream(studentRepository.findAll().spliterator(), false)
        .collect(Collectors.toList());
  }

  public Student findById(Long id) {
    Optional<Student> student = studentRepository.findById(id);
    return student.orElseThrow(RuntimeException::new);
  }
}
