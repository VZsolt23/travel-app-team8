package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.other.Settlement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SettlementRepository extends JpaRepository<Settlement, Long> {
}
