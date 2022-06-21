package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.station.TrainStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainStationRepository extends JpaRepository<TrainStation, Long> {

}
