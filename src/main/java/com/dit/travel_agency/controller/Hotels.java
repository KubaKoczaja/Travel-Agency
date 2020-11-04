package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.City;
import com.dit.travel_agency.model.Hotel;
import com.dit.travel_agency.model.Trip;
import com.dit.travel_agency.service.CityService;
import com.dit.travel_agency.service.HotelService;
import com.dit.travel_agency.service.TripService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Hotels {
    private final CityService cityService;
    private final HotelService hotelService;
    private final TripService tripService;

    public Hotels(CityService cityService, HotelService hotelService, TripService tripService) {
        this.cityService = cityService;
        this.hotelService = hotelService;
        this.tripService = tripService;
    }


    @RequestMapping(value = {"/addHotel"}, method = RequestMethod.GET)
    public String viewAddHotel(Model model) {
        List<Hotel> hotelList = hotelService.getHotelList();
        List<City> cityList = cityService.getCityList();
        model.addAttribute("hotels", hotelList);
        model.addAttribute("cities", cityList);
        return "/addHotel";
    }

    @PostMapping("/addHotel")
    public RedirectView postAddHotel(Hotel hotel) {
        hotelService.addHotel(hotel);
        return new RedirectView("/home");
    }

    @RequestMapping(value = {"/hotels"}, method = RequestMethod.GET)
    public String viewHotelsList(Model model) {
        List<Hotel> hotelList = hotelService.getHotelList();
        model.addAttribute("hotels", hotelList);
        return "/hotels";
    }

}
