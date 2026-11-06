package com.csc340.assignment3.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@Controller 
public class CharacterUiController {

    private final CharacterService service;

    public CharacterUiController(CharacterService service) {
        this.service = service;
    }

    //about page
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // gallery page
    @GetMapping({ "/", "/characters" })
    public String gallery(@RequestParam(required = false) String name,
        @RequestParam(required = false) MapLocation mapLocation,
        Model model) {
        model.addAttribute("characters", service.search(name, mapLocation));
        model.addAttribute("name", name == null ? "" : name);
        model.addAttribute("selectedLocation", mapLocation == null ? "" : mapLocation.name());
        return "index"; 
    }

    // details about a specific character
    @GetMapping("/characters/{id}")
    public String details(@PathVariable long id, Model model) {
        StardewCharacter character = service.findById(id);

        model.addAttribute("myChar", character);

        return "details";
    }





}
