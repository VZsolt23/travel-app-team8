package hu.nye.algorithm.traveler.service;

import hu.nye.algorithm.traveler.model.line.BusLines;
import hu.nye.algorithm.traveler.model.line.Flights;
import hu.nye.algorithm.traveler.model.line.ShipLines;
import hu.nye.algorithm.traveler.model.line.TrainLines;

import java.util.List;

public interface RouteService {
    List<BusLines> getAllBusLines();

    List<ShipLines> getAllShipLines();

    List<TrainLines> getAllTrainLines();

    List<Flights> getAllFlights();

}
