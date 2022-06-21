package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.station.BusStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusStationRepository extends JpaRepository<BusStation, Long> {
}
