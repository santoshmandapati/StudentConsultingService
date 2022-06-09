package com.fifo.edu.jpa;

import com.fifo.edu.model.AppUser;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AppUserRepository extends CrudRepository<AppUser, Long> {
  AppUser findByUsername(String username);

  List<AppUser> findByConsultancy_ConsultancyId(Long consultancyId);
}
