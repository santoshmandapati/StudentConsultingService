package com.fifo.edu.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Consultancy {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long consultancyId;
  private String name;
}
