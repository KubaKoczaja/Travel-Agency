package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.City;
import com.dit.travel_agency.model.Hotel;
import com.dit.travel_agency.repository.CityRepository;
import com.dit.travel_agency.repository.HotelRepository;
import com.dit.travel_agency.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Set;

@Controller
public class Hotels {

    @Autowired
    HotelRepository hotelRepository;

    @Autowired
    CityRepository cityRepository;

    @Autowired
    CityService cityService;

    @RequestMapping(value = {"/addHotel"}, method = RequestMethod.GET)
    public String viewAddHotel(Model model) {
        Iterable<Hotel> list = hotelRepository.findAll();
        Iterable<City> cityList = cityService.getCityList();
        model.addAttribute("hotel", list);
        model.addAttribute("cities", cityList);
        return "/addHotel";
    }
}
