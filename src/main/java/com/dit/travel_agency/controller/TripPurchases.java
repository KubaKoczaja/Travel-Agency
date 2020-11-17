package com.dit.travel_agency.controller;

import com.dit.travel_agency.model.Participant;
import com.dit.travel_agency.model.Trip;
import com.dit.travel_agency.model.TripPurchase;
import com.dit.travel_agency.service.ParticipantService;
import com.dit.travel_agency.service.TripPurchaseService;
import com.dit.travel_agency.service.TripService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Arrays;

@Controller
public class TripPurchases {
    private final TripPurchaseService tripPurchaseService;
    private final ParticipantService participantService;
    private final TripService tripService;

    public TripPurchases(TripPurchaseService tripPurchaseService, ParticipantService participantService, TripService tripService) {
        this.tripPurchaseService = tripPurchaseService;
        this.participantService = participantService;
        this.tripService = tripService;
    }

    @GetMapping("/tripPurchase/{id}")
    public String getTripPurchase(Model model, @PathVariable String id) {
        TripPurchase tripPurchase = tripPurchaseService.getTripPurchaseById(Long.valueOf(id));
        model.addAttribute("tripPurchase", tripPurchase);
        return "/tripPurchase";
    }

    @PostMapping("/tripPurchase")
    public RedirectView postTripPurchase(TripPurchase tripPurchase) {
        tripPurchaseService.addTripPurchase(tripPurchase);

        return new RedirectView("/tripPurchase/" + tripPurchase.getId());
    }

    @PostMapping("/tripPurchase/addParticipants")
    public RedirectView postParticipants(Participant participantsInput){
        String[] participantsFirstnames = participantsInput.getFirstname().split(",");
        String[] participantsLastnames = participantsInput.getLastname().split(",");
        String[] participantsPassportNumbers = participantsInput.getPassportNumber().split(",");
        String[] participantsIsAdult = participantsInput.getIsAdult().split(",");
        Participant[] participants = new Participant[participantsFirstnames.length];

        for (int i = 0; i < participants.length; i++) {
            participants[i] = new Participant();
            participants[i].setFirstname(participantsFirstnames[i]);
            participants[i].setLastname(participantsLastnames[i]);
            participants[i].setPassportNumber(participantsPassportNumbers[i]);
            participants[i].setTripPurchase(participantsInput.getTripPurchase());
            participants[i].setIsAdult(participantsIsAdult[i]);
            participantService.addParticipant(participants[i]);
        }
        
        TripPurchase tripPurchase = tripPurchaseService.getTripPurchaseById(participantsInput.getTripPurchase().getId());
        Trip trip = tripService.getTrip(tripPurchase.getTrip().getId());
        System.out.println(trip.getNumberOfAdults());

        trip.setNumberOfAdults(trip.getNumberOfAdults() - tripPurchase.getNumberOfAdultParticipants());
        trip.setNumberOfChildren(trip.getNumberOfChildren() - tripPurchase.getNumberOfChildParticipants());

        tripService.addTrip(trip);
        return new RedirectView("/tripList");
    }
}
