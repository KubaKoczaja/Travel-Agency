package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table
@Data
@NoArgsConstructor

public class Participant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "trip_purchase_id")
    private TripPurchase tripPurchase;

    private String firstname;
    private String lastname;
    private String passportNumber;
    private Boolean isAdult;

}
