package com.elens.oauth.elensoauth.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

@RestController
@RequestMapping("admin")
public class MainController {


    @RequestMapping("/")
    public String index(){

        return "index" ;
    }

    @RequestMapping("/detail")
    public String hello(){
        return "hello" ;
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }
    @GetMapping("/me")
    public Principal user(Principal principal) {
        return principal;
    }
//    @RequestMapping("/abc")
//    public List<Permission> getroles(){
//        return permissionService.findByAdminUserId(2) ;
//    }
}
