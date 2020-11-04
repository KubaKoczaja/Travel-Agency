package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.Trip;
import com.dit.travel_agency.service.TripPurchaseService;
import com.dit.travel_agency.service.TripService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class TripPurchases {
    private final TripPurchaseService tripPurchaseService;
    private final TripService tripService;

    public TripPurchases(TripPurchaseService tripPurchaseService, TripService tripService) {
        this.tripPurchaseService = tripPurchaseService;
        this.tripService = tripService;
    }

    @GetMapping("/tripPurchase/{id}")
    public String getTripPurchase(Model model, @PathVariable String id) {
        Trip trip = tripService.getTrip(Long.valueOf(id));
        model.addAttribute("trip", trip);

        return "/tripPurchase";
    }
}
