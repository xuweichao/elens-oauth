package com.elens.oauth.elensoauth.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("govern")
public class GovernController {


    @RequestMapping("/")
    public String index(){

        return "index" ;
    }

    @RequestMapping("/hello")
    public String hello(){
        return "hello" ;
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

//    @RequestMapping("/abc")
//    public List<Permission> getroles(){
//        return permissionService.findByAdminUserId(2) ;
//    }
}
