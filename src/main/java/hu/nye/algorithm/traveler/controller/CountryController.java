package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.service.CountryService;
import hu.nye.algorithm.traveler.service.SettlementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CountryController {

    @Autowired
    private CountryService countryService;

    @Autowired
    private SettlementService settlementService;

    @GetMapping
    public String homePage() {
        return "index";
    }

    @GetMapping("/countries")
    public String allCountries(Model model) {
        model.addAttribute("listCountries", countryService.getAllCountries());
        return "view/countrypage";
    }

    @GetMapping("/settlements")
    public String allSettlements(Model model) {
        model.addAttribute("listSettlements", settlementService.getAllSettlements());
        return "view/settlements";
    }
}
