package com.csc340.assignment3.characters;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

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

    @NotBlank 
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

    public MapLocation getLocation(){
        return mapLocation;
    }

    public void setLocation(MapLocation mapLocation){
        this.mapLocation = mapLocation;
    }

    public boolean getCandidate(){
        return marriageCandidate;
    }

    public void setCandidate(boolean marriageCandidate){
        this.marriageCandidate = marriageCandidate;
    }

}