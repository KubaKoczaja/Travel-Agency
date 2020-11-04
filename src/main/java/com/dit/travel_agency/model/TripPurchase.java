package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
@Data
@NoArgsConstructor

public class TripPurchase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "tripPurchase")
    private List<Trip> trips;

    @OneToMany(mappedBy = "tripPurchase")
    private List<Participant> participants;

    private Double totalPrice;


}
