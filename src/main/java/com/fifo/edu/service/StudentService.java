package com.fifo.edu.service;

import com.fifo.edu.jpa.*;
import com.fifo.edu.model.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;
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

  @Autowired
  private ShortListedUniversitiesRepository shortListedUniversitiesRepository;

  private Logger logger = LoggerFactory.getLogger(StudentService.class);

  public void create(Student student) {


    if(student.getEducation() != null) {
      Education education = student.getEducation();
      education.setStudent(student);
    }
    if(student.getExamScores() != null) {
      ExamScores examScores = student.getExamScores();
      examScores.setStudent(student);
    }
    if(student.getJobDetails() != null) {
      JobDetails jobDetails = student.getJobDetails();
      jobDetails.setStudent(student);
    }
    if(student.getStudentPreferences() != null) {
      StudentPreferences studentPreferences = student.getStudentPreferences();
      studentPreferences.setStudent(student);
    }
    if(student.getShortListedUniversities().size() > 0) {
      Set<ShortListedUniversities> shortListedUniversities = student.getShortListedUniversities();
      shortListedUniversities.forEach(u -> {
        u.setStudent(student);
      });
    }
    if(student.getStatus() != null) {
      Status status = student.getStatus();
      status.setStudent(student);
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

  public List<Student> findByConsultancy(Consultancy consultancy) {
    return studentRepository.findByConsultancy(consultancy);
  }

  public List<Student> findByConsultancyAndCountry(Consultancy consultancy, Country country) {
    return studentRepository.findByConsultancyAndCountry(consultancy, country);
  }
}
