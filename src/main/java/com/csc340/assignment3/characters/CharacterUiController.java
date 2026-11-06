package com.csc340.assignment3.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

@Controller
public class CharacterUiController {

    private final CharacterService service;

    public CharacterUiController(CharacterService service) {
        this.service = service;
    }

    // about page
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

    // adding new character, get form and post character from form input
    @GetMapping("/characters/new")
    public String newForm(Model model) {
        StardewCharacter character = new StardewCharacter();
        model.addAttribute("character", character);
        model.addAttribute("formTitle", "Add a Character");
        model.addAttribute("formAction", "/characters");
        return "character-form";
    }

    @PostMapping("/characters")
    public String createCharacter(@Valid @ModelAttribute StardewCharacter character) {
        StardewCharacter createdCharacter = service.create(character);
        return "redirect:/characters/" + createdCharacter.getId();
    }

    // edit existing character, get pre filled form for character and post for updated info
    @GetMapping("/characters/{id}/edit")
    public String editForm(@PathVariable Long id, Model model) {
        StardewCharacter character = service.findById(id);
        model.addAttribute("character", character);
        model.addAttribute("formTitle", "Edit Character");
        model.addAttribute("formAction", "/characters/" + id);
        return "character-form";
    }

    @PostMapping("/characters/{id}")
    public String updateCharacter(@PathVariable Long id, @Valid @ModelAttribute StardewCharacter character, BindingResult result) {
        StardewCharacter updatedCharacter = service.update(id, character);
        return "redirect:/characters/" + updatedCharacter.getId();
    }

    //delete 
    @PostMapping("/characters/{id}/delete")
    public String deleteCharacter(@PathVariable Long id) {
        service.delete(id);
        return "redirect:/characters";
    }

}
