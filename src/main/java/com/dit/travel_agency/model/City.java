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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String cityName;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "city")
    private List<Hotel> hotelList;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "city")
    private List<Airport> airportList;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "startCity")
    private List<Trip> tripStartList;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "destinationCity")
    private List<Trip> tripDestinationList;
}
