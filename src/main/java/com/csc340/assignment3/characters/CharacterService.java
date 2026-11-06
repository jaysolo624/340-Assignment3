package com.csc340.assignment3.characters;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CharacterService {

    private final CharacterRepository repository;

    private static final String UPLOAD_DIR = "src/main/resources/static/thumbnails/";

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
        existing.setRelationships(updated.getRelationships());
        existing.setGifts(updated.getGifts());
        existing.setBirthday(updated.getBirthday());
        return repository.save(existing);
    }

    public void delete(Long id) {
        findById(id); // throws 404 if missing
        repository.deleteById(id);
    }
    
    public void saveThumbnail(StardewCharacter character, MultipartFile file) {
        // Save the thumbnail file to a location and set the thumbnailUrl in the character
        // For simplicity, let's assume we save it to a static directory and set the URL
        // accordingly
        String originalFileName = file.getOriginalFilename();
        try {
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
            String newFileName = "character_" + character.getId() + "." + fileExtension;
            Path path = Paths.get(UPLOAD_DIR + newFileName);
            InputStream inputStream = file.getInputStream();
            Files.createDirectories(Paths.get(UPLOAD_DIR)); // Ensure the directory exists
            Files.copy(inputStream, path, StandardCopyOption.REPLACE_EXISTING);
            character.setThumbnailUrl( newFileName);
            repository.save(character);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
