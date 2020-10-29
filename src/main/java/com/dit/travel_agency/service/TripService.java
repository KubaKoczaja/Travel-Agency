package com.dit.travel_agency.service;

import com.dit.travel_agency.model.Trip;
import com.dit.travel_agency.repository.TripRepository;
import org.springframework.stereotype.Service;

@Service
public class TripService {
    private final TripRepository tripRepository;

    public TripService(TripRepository tripRepository) {
        this.tripRepository = tripRepository;
    }

    public void addTrip(Trip newTrip) {
        tripRepository.save(newTrip);
    }
}
