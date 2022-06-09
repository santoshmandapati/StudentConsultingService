package com.fifo.edu.jpa;

import com.fifo.edu.model.Country;
import org.springframework.data.repository.CrudRepository;

public interface CountryRepository extends CrudRepository<Country, Long> {
}
