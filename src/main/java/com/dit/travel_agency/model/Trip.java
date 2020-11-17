package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

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

    @OneToMany(mappedBy = "trip")
    private List<TripPurchase> tripPurchaseList;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date departureDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date returnDate;

    private Integer numberOfDays;
    private Double adultPrice;
    private Double childPrice;
    private Integer numberOfAdults;
    private Integer numberOfChildren;
    private Boolean isPromoted;
    private String catering;
}
