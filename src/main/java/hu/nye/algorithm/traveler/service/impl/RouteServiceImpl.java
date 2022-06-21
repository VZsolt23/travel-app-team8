package hu.nye.algorithm.traveler.service.impl;

import hu.nye.algorithm.traveler.model.line.BusLines;
import hu.nye.algorithm.traveler.model.line.Flights;
import hu.nye.algorithm.traveler.model.line.ShipLines;
import hu.nye.algorithm.traveler.model.line.TrainLines;
import hu.nye.algorithm.traveler.repository.BusLineRepository;
import hu.nye.algorithm.traveler.repository.FlightRepository;
import hu.nye.algorithm.traveler.repository.ShipLineRepository;
import hu.nye.algorithm.traveler.repository.TrainLineRepository;
import hu.nye.algorithm.traveler.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    private BusLineRepository busLineRepository;

    @Autowired
    private ShipLineRepository shipLineRepository;

    @Autowired
    private TrainLineRepository trainLineRepository;

    @Autowired
    private FlightRepository flightRepository;

    @Override
    public List<BusLines> getAllBusLines() {
        return busLineRepository.findAll();
    }

    @Override
    public List<ShipLines> getAllShipLines() {
        return shipLineRepository.findAll();
    }

    @Override
    public List<TrainLines> getAllTrainLines() {
        return trainLineRepository.findAll();
    }

    @Override
    public List<Flights> getAllFlights() {
        return flightRepository.findAll();
    }
}
