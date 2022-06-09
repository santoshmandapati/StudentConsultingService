package com.fifo.edu.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Country {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long countryId;
  private String code;
  private String name;
}
