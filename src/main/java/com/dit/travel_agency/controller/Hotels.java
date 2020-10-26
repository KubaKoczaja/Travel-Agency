package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.Hotel;
import com.dit.travel_agency.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class Hotels {

    @Autowired
    HotelRepository hotelRepository;

    @RequestMapping(value = {"/addHotel"}, method = RequestMethod.GET)
    public String viewAddHotel(Model model) {
        List<Hotel> list = hotelRepository.findAll();
        model.addAttribute("hotel", list);
        return "/addHotel";
    }
}
