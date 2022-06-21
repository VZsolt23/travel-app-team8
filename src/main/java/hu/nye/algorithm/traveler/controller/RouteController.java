package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.model.line.BusLines;
import hu.nye.algorithm.traveler.model.line.Flights;
import hu.nye.algorithm.traveler.model.line.ShipLines;
import hu.nye.algorithm.traveler.model.line.TrainLines;
import hu.nye.algorithm.traveler.service.RouteService;
import hu.nye.algorithm.traveler.service.SettlementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.NoSuchElementException;

@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

    @Autowired
    private SettlementService settlementService;

    @GetMapping("/flights")
    public String listOfFlights(Model model) {
        model.addAttribute("listFlights", routeService.getAllFlights());
        return "view/flights";
    }

    @GetMapping("/buslines")
    public String listOfBusLines(Model model) {
        model.addAttribute("listBusLines", routeService.getAllBusLines());
        return "view/buslines";
    }

    @GetMapping("/shiplines")
    public String listOfShipLines(Model model) {
        model.addAttribute("listShipLines", routeService.getAllShipLines());
        return "view/shiplines";
    }

    @GetMapping("/trainlines")
    public String listOfTrainLines(Model model) {
        model.addAttribute("listTrainLines", routeService.getAllTrainLines());
        return "view/trainlines";
    }

    @GetMapping("/route")
    public String route() {
        return "view/countries";
    }

    @GetMapping("/route/{from}/{destination}")
    public String search(@PathVariable String from, @PathVariable String destination, Model model) {
        System.out.println("EZ BIZA IGEN JÓ!");

        model.addAttribute("trainLine", routeService.getAllTrainLines());
        model.addAttribute("busLine", routeService.getAllBusLines());
        model.addAttribute("shipLine", routeService.getAllShipLines());
        model.addAttribute("air", routeService.getAllFlights());

        if (model.getAttribute("trainLine").toString().contains("settlement_name="+from)) {
            if (model.getAttribute("trainLine").toString().contains("settlement_name="+destination)) {
                model.addAttribute("route", model.getAttribute("trainLine"));
            }
        } else if (model.getAttribute("busLine").toString().contains("settlement_name="+from)) {
            System.out.println("HALLOD VAN ILYEN");
            if (model.getAttribute("busLine").toString().contains("settlement_name="+destination)) {
                model.addAttribute("route", model.getAttribute("busLine"));
                System.out.println("HALLOD VAN ILYEN DE KOMOLYAN");
            }
        }

        System.out.println(settlementService.findSettlement(7L));

        return "view/travel-route";
    }
}
