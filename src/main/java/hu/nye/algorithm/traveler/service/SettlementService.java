package hu.nye.algorithm.traveler.service;

import hu.nye.algorithm.traveler.model.other.Settlement;

import java.util.List;
import java.util.Optional;

public interface SettlementService {

    List<Settlement> getAllSettlements();

    Optional<Settlement> findSettlement(Long id);
}
