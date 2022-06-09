package com.fifo.edu.service;

import com.fifo.edu.jpa.AppUserRepository;
import com.fifo.edu.model.AppUser;
import com.fifo.edu.model.AppUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.ReactiveUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

import java.util.List;

@Service
public class AppUserDetailsService implements ReactiveUserDetailsService {

  @Autowired
  private AppUserRepository appUserRepository;

  @Override
  public Mono<UserDetails> findByUsername(String username) {
    AppUser appUser = appUserRepository.findByUsername(username);
      if (appUser == null) {
      throw new UsernameNotFoundException(username);
    }
    AppUserDetails appUserDetails = new AppUserDetails(appUser);
    return Mono.just(appUserDetails);
  }

  public List<AppUser> findAppUsers(long consultancyId) {
    return appUserRepository.findByConsultancy_ConsultancyId(consultancyId);
  }

  public AppUser getUser(String username) {
    return appUserRepository.findByUsername(username);
  }

  public AppUser register(AppUser appUser) {
    return appUserRepository.save(appUser);
  }

  public AppUser save(AppUser appUser) {
    return appUserRepository.save(appUser);
  }
}
