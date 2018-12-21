package com.elens.oauth.elensoauth.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("admin")
public class MainController {


    @GetMapping("/")
    public String index(){

        return "index" ;
    }

    @PostMapping("/detail")
    public String hello(){
        return "hello" ;
    }

    @PostMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/me")
    public String user(Principal principal) {
        return principal.getName();
    }

}
