package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
@Data
@NoArgsConstructor

public class Trip {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "start_city_id")
    private City startCity;

    @ManyToOne
    @JoinColumn(name = "start_airport_id")
    private Airport startAirport;

    @ManyToOne
    @JoinColumn(name = "destination_city_id")
    private City destinationCity;

    @ManyToOne
    @JoinColumn(name = "destination_airport_id")
    private Airport destinationAirport;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    private Date departureDate;
    private Date returnDate;
    private Integer numberOfDays;
    private Double adultPrice;
    private Double childPrice;
    private Integer numberOfAdults;
    private Integer numberOfChildren;
    private Boolean isPromoted;
    private String catering;
}
