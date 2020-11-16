package com.dit.travel_agency.service;

import com.dit.travel_agency.model.TripPurchase;
import com.dit.travel_agency.repository.TripPurchaseRepository;
import org.springframework.stereotype.Service;

@Service
public class TripPurchaseService {
    private TripPurchaseRepository tripPurchaseRepository;

    public TripPurchaseService(TripPurchaseRepository tripPurchaseRepository) {
        this.tripPurchaseRepository = tripPurchaseRepository;
    }

    public void addTripPurchase(TripPurchase tripPurchase) {
        tripPurchaseRepository.save(tripPurchase);
    }

    public TripPurchase getTripPurchaseById(Long id) {
        return tripPurchaseRepository.findById(id).orElse(null);
    }
}
