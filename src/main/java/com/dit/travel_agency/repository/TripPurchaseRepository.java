package com.dit.travel_agency.repository;

import com.dit.travel_agency.model.TripPurchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TripPurchaseRepository extends JpaRepository<TripPurchase, Long> {
}
