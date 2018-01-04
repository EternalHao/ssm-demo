package com.shangfu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @RequestMapping("/login")
    public String test(@RequestParam("username") String username, @RequestParam("password") String password){
        if(username.equals("hyh")&&password.equals("123")) {
            return "redirect:/pages/success.jsp";
        }
        return "redirect:index.jsp";
    }
}
