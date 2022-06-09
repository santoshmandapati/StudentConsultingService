package com.fifo.edu.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;
import org.springframework.security.web.server.authentication.RedirectServerAuthenticationSuccessHandler;

@EnableWebFluxSecurity
public class WebSecurityConfig {

  @Bean
  public SecurityWebFilterChain securityWebFilterChain(
      ServerHttpSecurity http) {
    return http
        .cors()
        .and()
        .csrf()
        .disable()
        .authorizeExchange()
        .anyExchange().authenticated()
        .and().formLogin()
        .authenticationSuccessHandler(new RedirectServerAuthenticationSuccessHandler())
        .and().build();
  }
}
