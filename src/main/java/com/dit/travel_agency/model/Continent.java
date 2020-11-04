package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
@Data
@NoArgsConstructor

public class Continent {
    @Id
    private Long id;
    private String continentName;

    @OneToMany(mappedBy = "continent")
    private List<Country> countryList;
}
