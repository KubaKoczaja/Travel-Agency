package com.dit.travel_agency.service;

import com.dit.travel_agency.model.City;
import com.dit.travel_agency.repository.CityRepository;
import org.springframework.stereotype.Service;

@Service
public class CityService {
    private final CityRepository cityRepository;

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public Iterable<City> getCityList() {
        return cityRepository.findAll();
    }
}
