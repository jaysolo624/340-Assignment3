package com.csc340.assignment3.characters;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CharacterRepository extends JpaRepository<StardewCharacter, Long> {

    List<StardewCharacter> findByMapLocation(MapLocation mapLocation);

    List<StardewCharacter> findByNameContainingIgnoreCase(String name);

    List<StardewCharacter> findByNameContainingIgnoreCaseAndMapLocation(String name, MapLocation mapLocation);
}