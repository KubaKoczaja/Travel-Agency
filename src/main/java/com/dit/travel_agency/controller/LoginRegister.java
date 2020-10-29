package com.dit.travel_agency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginRegister {

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login(Model model){
        return "/login";
    }



    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public String register(Model model){
        return "/register";
    }
}
