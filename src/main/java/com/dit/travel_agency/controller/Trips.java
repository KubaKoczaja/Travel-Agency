package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.Airport;
import com.dit.travel_agency.model.City;
import com.dit.travel_agency.model.Hotel;
import com.dit.travel_agency.model.Trip;
import com.dit.travel_agency.service.AirportService;
import com.dit.travel_agency.service.CityService;
import com.dit.travel_agency.service.HotelService;
import com.dit.travel_agency.service.TripService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Trips {
    private final CityService cityService;
    private final HotelService hotelService;
    private final AirportService airportService;
    private final TripService tripService;

    public Trips(CityService cityService, HotelService hotelService, AirportService airportService, TripService tripService) {
        this.cityService = cityService;
        this.hotelService = hotelService;
        this.airportService = airportService;
        this.tripService = tripService;
    }

    @GetMapping("/addTrip")
    public String addTrip(Model model) {
        List<City> cityList = cityService.getCityList();
        List<Airport> airportList = airportService.getAirportList();
        List<Hotel> hotelList = hotelService.getHotelList();
        model.addAttribute("cities", cityList);
        model.addAttribute("airports", airportList);
        model.addAttribute("hotels", hotelList);
        return "/addTrip";
    }

    @PostMapping("/addTrip")
    public RedirectView postAddTrip(Trip trip) {
        tripService.addTrip(trip);
        return new RedirectView("/home");
    }

    @GetMapping("/tripList")
    public String viewTripList(Model model) {
        List<Trip> tripList = tripService.getTripList();
        model.addAttribute("trips", tripList);
        return "tripList";
    }

    @GetMapping("/hotelView/{id}")
    public String getHotelView(Model model, @PathVariable String id) {
        Trip trip = tripService.getTrip(Long.valueOf(id));
        model.addAttribute("trip", trip);
        return "hotelView";
    }
}
