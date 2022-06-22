package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.line.TrainLines;
import hu.nye.algorithm.traveler.model.station.TrainStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TrainLineRepository extends JpaRepository<TrainLines, TrainStation> {

}
