package com.fifo.edu.controller;


import com.fifo.edu.jpa.CountryRepository;
import com.fifo.edu.model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@RestController
@RequestMapping("/api/")
public class CountryController {

  @Autowired
  private CountryRepository countryRepository;

  @GetMapping("countries")
  public List<Country> getAllCountries() {
    return StreamSupport.stream(countryRepository.findAll().spliterator(), false).collect(Collectors.toList());
  }
}
