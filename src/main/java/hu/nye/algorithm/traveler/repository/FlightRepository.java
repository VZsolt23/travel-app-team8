package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.line.Flights;
import hu.nye.algorithm.traveler.model.station.Airport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FlightRepository extends JpaRepository<Flights, Airport> {
}
