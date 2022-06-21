package hu.nye.algorithm.traveler.service.impl;

import hu.nye.algorithm.traveler.model.station.Airport;
import hu.nye.algorithm.traveler.model.station.BusStation;
import hu.nye.algorithm.traveler.model.station.ShipStation;
import hu.nye.algorithm.traveler.model.station.TrainStation;
import hu.nye.algorithm.traveler.repository.AirportRepository;
import hu.nye.algorithm.traveler.repository.BusStationRepository;
import hu.nye.algorithm.traveler.repository.ShipStationRepository;
import hu.nye.algorithm.traveler.repository.TrainStationRepository;
import hu.nye.algorithm.traveler.service.StationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StationServiceImpl implements StationService {

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private BusStationRepository busStationRepository;

    @Autowired
    private ShipStationRepository shipStationRepository;

    @Autowired
    private TrainStationRepository trainStationRepository;

    @Override
    public List<Airport> getAllAirports() {
        return airportRepository.findAll();
    }

    @Override
    public List<BusStation> getAllBusStations() {
        return busStationRepository.findAll();
    }

    @Override
    public List<ShipStation> getAllShipStations() {
        return shipStationRepository.findAll();
    }

    @Override
    public List<TrainStation> getAllTrainStations() {
        return trainStationRepository.findAll();
    }
}
