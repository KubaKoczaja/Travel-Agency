package com.dit.travel_agency.service;

import com.dit.travel_agency.model.Airport;
import com.dit.travel_agency.repository.AirportRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AirportService{
    private final AirportRepository airportRepository;


    public AirportService(AirportRepository airportRepository) {
        this.airportRepository = airportRepository;
    }

    public List<Airport> getAirportList() {
        return airportRepository.findAll();
    }

    public void addAirport(Airport airport) {
        airportRepository.save(airport);
    }
}
