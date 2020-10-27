package com.dit.travel_agency.service;

import com.dit.travel_agency.model.Hotel;
import com.dit.travel_agency.repository.HotelRepository;
import org.springframework.stereotype.Service;

@Service
public class HotelService {
    private final HotelRepository hotelRepository;

    public HotelService(HotelRepository hotelRepository) {
        this.hotelRepository = hotelRepository;
    }

    public Iterable<Hotel> getHotelList() {
        return hotelRepository.findAll();
    }

    public void deleteHotel(Long id) {
        hotelRepository.deleteById(id);
        System.out.println("deleting hotel on id:" + id);
    }

    public Hotel getHotel(Long id) {
        return hotelRepository.findById(id).orElse(null);
    }
}
