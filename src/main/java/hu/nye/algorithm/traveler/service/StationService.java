package hu.nye.algorithm.traveler.service;

import hu.nye.algorithm.traveler.model.station.Airport;
import hu.nye.algorithm.traveler.model.station.BusStation;
import hu.nye.algorithm.traveler.model.station.ShipStation;
import hu.nye.algorithm.traveler.model.station.TrainStation;

import java.util.List;

public interface StationService {
    List<Airport> getAllAirports();

    List<BusStation> getAllBusStations();

    List<ShipStation> getAllShipStations();

    List<TrainStation> getAllTrainStations();
}
