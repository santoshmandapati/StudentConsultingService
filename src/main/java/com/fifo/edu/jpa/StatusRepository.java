package com.fifo.edu.jpa;

import com.fifo.edu.model.Status;
import org.springframework.data.repository.CrudRepository;

public interface StatusRepository extends CrudRepository<Status, Long> {
}
