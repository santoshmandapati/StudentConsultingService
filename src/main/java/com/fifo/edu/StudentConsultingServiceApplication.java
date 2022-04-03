package com.fifo.edu;

import com.fifo.edu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories
public class StudentConsultingServiceApplication {


	public static void main(String[] args) {
		SpringApplication.run(StudentConsultingServiceApplication.class, args);
	}
}
