package com.fifo.edu.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class AppUser {
  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long appUserId;
  private String name;
  private String username;
  @JsonIgnore
  private String password;
  private String role;

  @OneToOne
  @JoinColumn(name = "consultancy_id")
  private Consultancy consultancy;

  @OneToOne
  @JoinColumn(name = "country_id")
  private Country country;

  @JsonIgnore
  public String getPassword() {
    return password;
  }

  @JsonProperty
  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "AppUser{" +
        "appUserId=" + appUserId +
        ", name='" + name + '\'' +
        ", username='" + username + '\'' +
        ", role='" + role + '\'' +
        ", consultancy=" + consultancy +
        ", country=" + country +
        '}';
  }
}
