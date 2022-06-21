package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.other.Region;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionRepository extends JpaRepository<Region, Long> {
}
