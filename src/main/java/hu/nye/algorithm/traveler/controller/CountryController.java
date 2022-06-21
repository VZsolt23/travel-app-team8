package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CountryController {

    @Autowired
    private CountryService countryService;

    @GetMapping
    public String homePage() {
        return "index";
    }

    @GetMapping("/countries")
    public String allCountries(Model model) {
        model.addAttribute("listCountries", countryService.getAllCountries());
        return "view/countries";
    }
}
