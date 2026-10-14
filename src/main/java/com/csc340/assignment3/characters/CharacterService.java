package com.csc340.assignment3.characters;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository repository;

    public CharacterService(CharacterRepository repository){
        this.repository = repository;
    }

    public List<StardewCharacter> findAll() {
        return repository.findAll();
    }

    public List<StardewCharacter> findByMapLocation(MapLocation mapLocation) {
        return repository.findByMapLocation(mapLocation);
    }

    public List<StardewCharacter> search(String name, MapLocation mapLocation) {
        boolean hasName = name != null && !name.isBlank();

        if (hasName && mapLocation != null) {
            return repository.findByNameContainingIgnoreCaseAndMapLocation(name.trim(), mapLocation);
        }
        if (hasName) {
            return repository.findByNameContainingIgnoreCase(name.trim());
        }
        if (mapLocation != null) {
            return repository.findByMapLocation(mapLocation);
        }
        return repository.findAll();
    }

    public StardewCharacter findById(Long id) {
        return repository.findById(id).orElseThrow(() -> new StardewCharacterNotFoundException(id));
    }

    public StardewCharacter create(StardewCharacter stardewCharacter) {
        return repository.save(stardewCharacter);
    }

    public StardewCharacter update(Long id, StardewCharacter updated) {
        StardewCharacter existing = findById(id);
        existing.setName(updated.getName());
        existing.setDescription(updated.getDescription());
        existing.setMapLocation(updated.getMapLocation());
        existing.setMarriageCandidate(updated.isMarriageCandidate());
        return repository.save(existing);
    }

    public void delete(Long id) {
        findById(id); // throws 404 if missing
        repository.deleteById(id);
    }
    
}
