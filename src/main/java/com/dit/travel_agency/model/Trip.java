package com.dit.travel_agency.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
@Data
@NoArgsConstructor
@EqualsAndHashCode
public class Trip {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "start_city_id")
    private City startCity;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "start_airport_id")
    private Airport startAirport;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "destination_city_id")
    private City destinationCity;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "destination_airport_id")
    private Airport destinationAirport;

    @ManyToOne(fetch = FetchType.EAGER)
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
