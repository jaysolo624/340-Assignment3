package com.csc340.assignment3.characters;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class StardewCharacterNotFoundException extends RuntimeException {
    public StardewCharacterNotFoundException(Long id) {
        super("Stardew Character " + id + " not found");
    }
}
