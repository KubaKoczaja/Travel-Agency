package com.dit.travel_agency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminPanel {

    @RequestMapping(value = "/adminPanel", method = RequestMethod.GET)
    public String admin(Model model) {
        return "adminPanel";
    }
}
