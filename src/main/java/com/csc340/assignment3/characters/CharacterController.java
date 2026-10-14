package com.csc340.assignment3.characters;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {
    
    private final CharacterService service;

    public CharacterController(CharacterService service) {
        this.service = service;
    }

    @GetMapping
    public List<StardewCharacter> list(@RequestParam(required = false) String name,
            @RequestParam(required = false) MapLocation location) {
        return service.search(name, location);
    }

    @GetMapping("/{id}")
    public StardewCharacter get(@PathVariable Long id) {
        return service.findById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public StardewCharacter create(@Valid @RequestBody StardewCharacter character) {
        return service.create(character);
    }

    @PutMapping("/{id}")
    public StardewCharacter update(@PathVariable Long id, @Valid @RequestBody StardewCharacter character) {
        return service.update(id, character);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }

    /* Pulse check endpoint */
    // Used to verify that the API is running and responsive
    // without performing any actual character-related operations.
    @GetMapping("/pulse")
    public ResponseEntity<String> checkPulse() {
        return ResponseEntity.ok("Pulse check successful");
    }

}
