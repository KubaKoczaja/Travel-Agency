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

    @ManyToOne
    @JoinColumn(name = "trip_id")
    private Trip trip;

    @OneToMany(mappedBy = "tripPurchase")
    private List<Participant> participants;

    private Double totalPrice;
    private Integer numberOfAdultParticipants;
    private Integer numberOfChildParticipants;

//public Double getTotalPrice() {
//    return (trip.getAdultPrice() * getNumberOfAdultParticipants()) + (trip.getChildPrice() * getNumberOfChildParticipants());
//}

public void setTotalPrice() {
    this.totalPrice = (trip.getAdultPrice() * getNumberOfAdultParticipants()) + (trip.getChildPrice() * getNumberOfChildParticipants());
}
}
