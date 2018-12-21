package com.elens.oauth.elensoauth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class ClientModelController {


    @GetMapping("auth")
    public String index() {
        return "oauth_index";
    }

    @RequestMapping("login")
    public String login(Model model, @RequestParam(value = "error", required = false) String error){
        if (error != null) {
            model.addAttribute("error", "用户名或密码错误");
        }
        return "oauth_login";
    }

    @RequestMapping("confirm")
    public String confirm(Model model, @RequestParam(value = "error", required = false) String error){
        return "oauth_confirm";
    }


}
