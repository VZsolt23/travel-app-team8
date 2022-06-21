package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.service.StationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StationController {

    @Autowired
    private StationService stationService;

    @GetMapping("/airports")
    public String listOfAirports(Model model) {
        model.addAttribute("listAirports", stationService.getAllAirports());
        return "view/airports";
    }

    @GetMapping("/busstation")
    public String listOfBusStations(Model model) {
        model.addAttribute("listBusStation", stationService.getAllBusStations());
        return "view/busstation";
    }

    @GetMapping("/shipstation")
    public String listOfShipStations(Model model) {
        model.addAttribute("listShipStation", stationService.getAllShipStations());
        return "view/shipstation";
    }

    @GetMapping("/trainstation")
    public String listOfTrainStations(Model model) {
        model.addAttribute("listTrainStation", stationService.getAllTrainStations());
        return "view/trainstation";
    }
}
