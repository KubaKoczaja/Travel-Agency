package com.dit.travel_agency.model;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
@Data
@NoArgsConstructor

public class Airport {
    @Id

    private Long id;
    private String airportName;
    private String airportCode;

    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "startAirport")
    private List<Trip> tripStartList;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "destinationAirport")
    private List<Trip> tripDestinationList;
}
