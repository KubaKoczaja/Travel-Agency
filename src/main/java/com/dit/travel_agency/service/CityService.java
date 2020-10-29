package com.dit.travel_agency.service;

import com.dit.travel_agency.model.City;
import com.dit.travel_agency.repository.CityRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {
    private final CityRepository cityRepository;

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public List<City> getCityList() {
        return cityRepository.findAll();
    }

    public void addCity(City newCity) {
        cityRepository.save(newCity);
    }
}
