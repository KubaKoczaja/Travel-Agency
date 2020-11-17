package com.dit.travel_agency.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table
@Data
@NoArgsConstructor
@AllArgsConstructor


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
    private String isAdult;

    @Override
    public String toString() {
        return "Participant{" +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", passportNumber='" + passportNumber + '\'' +
                ", isAdult='" + isAdult + '\'' +
                '}';
    }
}
