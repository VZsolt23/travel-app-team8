package hu.nye.algorithm.traveler.controller;

import hu.nye.algorithm.traveler.service.RouteService;
import hu.nye.algorithm.traveler.service.SettlementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.AbstractMap;
import java.util.Objects;

@Controller
public class RouteController {

    private Long settlementId;
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

        model.addAttribute("trainLine", routeService.getAllTrainLines());
        model.addAttribute("busLine", routeService.getAllBusLines());
        model.addAttribute("shipLine", routeService.getAllShipLines());
        model.addAttribute("air", routeService.getAllFlights());

        if (model.getAttribute("trainLine").toString().contains("settlement_name=" + from)) {
            if (model.getAttribute("trainLine").toString().contains("settlement_name=" + destination)) {
                getId(from, destination);
                model.addAttribute("route", model.getAttribute("trainLine"));
                model.addAttribute("asd", "Vonat");
            }
        } else if (model.getAttribute("busLine").toString().contains("settlement_name=" + from)) {
            if (model.getAttribute("busLine").toString().contains("settlement_name=" + destination)) {
                getId(from, destination);
                model.addAttribute("route", model.getAttribute("busLine"));
                model.addAttribute("asd", "Busz");
            }
        } else if (model.getAttribute("shipLine").toString().contains("settlement_name=" + from)) {
            if (model.getAttribute("shipLine").toString().contains("settlement_name=" + destination)) {
                getId(from, destination);
                model.addAttribute("route", model.getAttribute("shipLine"));
                model.addAttribute("asd", "Hajó");
            }
        } else if (model.getAttribute("air").toString().contains("settlement_name=" + from)) {
            if (model.getAttribute("air").toString().contains("settlement_name=" + destination)) {
                getId(from, destination);
                model.addAttribute("route", model.getAttribute("air"));
                model.addAttribute("asd", "Repülő");
            }
        }

        System.out.println(settlementId);

        return "view/travel-route";
    }

    private void getId(String from, String destination) {
        switch (from.toLowerCase()) {
            case "algiers":
                settlementId = 1L;  break;
            case "oran":
                settlementId = 2L; break;
            case "constantine":
                settlementId = 3L; break;
            case "port louis":
                settlementId = 4L; break;
            case "cape town":
                settlementId = 5L; break;
            case "durban":
                settlementId = 6L; break;
            case "tirana":
                settlementId = 7L; break;
            case "ljubljana":
                settlementId = 8L; break;
            case "cancún":
                settlementId = 9L; break;
            case "guadalajara":
                settlementId = 10L; break;
            case "mérida":
                settlementId = 11L; break;
            case "mexico city":
                settlementId = 12L; break;
            case "monterrey":
                settlementId = 13L; break;
            case "tijuana":
                settlementId = 14L; break;
            default:
                settlementId = 0L;
        }
    }
}
