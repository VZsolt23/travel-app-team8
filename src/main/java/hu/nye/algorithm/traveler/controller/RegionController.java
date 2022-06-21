package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.service.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RegionController {

    @Autowired
    private RegionService regionService;

    @GetMapping("/regions")
    public String allRegions(Model model) {
        model.addAttribute("listRegions", regionService.getAllRegions());
        return "view/regions";
    }
}
