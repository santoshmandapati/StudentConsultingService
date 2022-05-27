package com.fifo.edu.controller;

import com.fifo.edu.model.Student;
import com.fifo.edu.model.University;
import com.fifo.edu.service.StudentService;
import com.fifo.edu.service.UniversityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/")
public class StudentController {

  @Autowired
  private StudentService studentService;

  @Autowired
  private UniversityService universityService;

  private Logger logger = LoggerFactory.getLogger(StudentController.class);

  @PostMapping(value = "student/save", consumes = MediaType.APPLICATION_JSON_VALUE)
  public void createStudent(@RequestBody Student student) {
    logger.info("Save student request " + student.toString());
    try {
      studentService.create(student);
      logger.info("Successfully saved details for student (" + student.getStudentId() + ", " + student.getEmail() + ")");
    } catch (Exception e) {
      logger.error("Exception while saving student " + e);
    }
  }

  @GetMapping("students")
  public List<Student> findAllStudents() {
    logger.info("Get all students request");
    List<Student> students = new ArrayList<>();
    try {
      students = studentService.findAll();
      logger.info("GET all students response");
      logger.info("" + students.stream().map(s -> "(" + s.getStudentId() + ", " + s.getEmail() + ")").collect(Collectors.toList()));
    } catch (Exception e) {
      logger.error("Exception while getting all students : " + e);
    }

    return students;
  }

  @GetMapping("student/{id}")
  public Student findStudentById(@PathVariable Long id) {
    logger.info("Get student with id: " + id + " request");
    Student student = null;
    try {
      student = studentService.findById(id);
      logger.info("student details: " + student.toString());
    } catch (Exception e) {
      logger.error("Exception while getting student details with id: " + id + " ", e);
    }
    return student;
  }

  @GetMapping("universities")
  public List<University> findAllUniversities() {
    logger.info("Get all universities request");
    List<University> universities = new ArrayList<>();
    try {
      universities = universityService.findAll();
      logger.info("GET all universities response");
    } catch (Exception e) {
      logger.error("Exception while getting all students : " + e);
    }

    return universities;
  }

}
