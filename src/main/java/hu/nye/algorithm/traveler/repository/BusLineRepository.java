package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.line.BusLines;
import hu.nye.algorithm.traveler.model.station.BusStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusLineRepository extends JpaRepository<BusLines, BusStation> {

}
