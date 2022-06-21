package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.line.ShipLines;
import hu.nye.algorithm.traveler.model.station.ShipStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShipLineRepository extends JpaRepository<ShipLines, ShipStation> {
}
