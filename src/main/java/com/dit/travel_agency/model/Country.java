package com.dit.travel_agency.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
@Data
@NoArgsConstructor

public class Country {
    @Id
    private Long id;
    private String countryName;

    @ManyToOne
    @JoinColumn(name = "continent_id")
    private Continent continent;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "country")
    private List<City> cityList;
}
