package com.fifo.edu.jpa;

import com.fifo.edu.model.JobDetails;
import org.springframework.data.repository.CrudRepository;

public interface JobDetailsRepository extends CrudRepository<JobDetails, Long> {
}
