package com.fifo.edu.config;

import org.springframework.data.domain.AuditorAware;

import java.util.Optional;

public class AuditorAwareImpl implements AuditorAware<String> {

  @Override
  public Optional<String> getCurrentAuditor() {

/*return ReactiveSecurityContextHolder.getContext()
    .map(SecurityContext::getAuthentication)
    .map(a -> (Principal)a.getPrincipal())
    .map(Principal::getName)
    .switchIfEmpty(Mono.just("default"))
    .blockOptional();*/

    return Optional.of("default");
  }
}
