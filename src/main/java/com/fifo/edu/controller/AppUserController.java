package com.fifo.edu.controller;

import com.fifo.edu.model.AppUser;
import com.fifo.edu.service.AppUserDetailsService;
import com.fifo.edu.util.PasswordEncoder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@RequestMapping("/api/")
public class AppUserController {

    private Logger logger = LoggerFactory.getLogger(StudentController.class);

    @Autowired
    private AppUserDetailsService appUserDetailsService;

    @GetMapping(value = "appuser/context")
    @ResponseBody
    public AppUser currentUserName(Principal principal) {
      return appUserDetailsService.getUser(principal.getName());
    }

    @PostMapping(value = "appuser/register", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void registerAppUser(@RequestBody AppUser appUser) {
        logger.info("Register user: " + appUser);
        String hashedPassword = PasswordEncoder.encode("password");
        appUser.setPassword(hashedPassword);
        logger.info("Register user (after): " + appUser);
        appUserDetailsService.register(appUser);
    }

    @GetMapping(value = "appuser/list")
    public List<AppUser> findAppUsers(Principal principal) {
        AppUser appUser = appUserDetailsService.getUser(principal.getName());
        return appUserDetailsService.findAppUsers(appUser.getConsultancy().getConsultancyId());
    }

    @PostMapping(value = "appuser/credentials/update")
    public void updatePassword(@RequestBody String password, Principal principal) {
        AppUser appUser = appUserDetailsService.getUser(principal.getName());
        String hashedPassword = PasswordEncoder.encode(password);
        appUser.setPassword(hashedPassword);
        appUserDetailsService.save(appUser);
    }
}
