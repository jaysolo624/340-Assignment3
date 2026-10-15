package com.csc340.assignment3.characters;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "characters")
public class StardewCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @NotBlank
    private String name;

    @NotBlank
    private String description;

    @NotNull 
    @Enumerated(EnumType.STRING)
    private MapLocation mapLocation;

    private boolean marriageCandidate;


    public StardewCharacter(){

    }

    public Long getId(){
        return characterId;
    }

    public String getName(){
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription(){
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public MapLocation getMapLocation(){
        return mapLocation;
    }

    public void setMapLocation(MapLocation mapLocation){
        this.mapLocation = mapLocation;
    }

    public boolean isMarriageCandidate(){
        return marriageCandidate;
    }

    public void setMarriageCandidate(boolean marriageCandidate){
        this.marriageCandidate = marriageCandidate;
    }

}