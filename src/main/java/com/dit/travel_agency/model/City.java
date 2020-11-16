package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
@Data
@NoArgsConstructor

public class City {
    @Id

    private Long id;
    private String cityName;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @OneToMany(mappedBy = "city")
    private List<Hotel> hotelList;

    @OneToMany(mappedBy = "city")
    private List<Airport> airportList;

    @OneToMany(mappedBy = "startCity")
    private List<Trip> tripStartList;

    @OneToMany(mappedBy = "destinationCity")
    private List<Trip> tripDestinationList;
}
