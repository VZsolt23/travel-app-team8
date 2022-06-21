package hu.nye.algorithm.traveler.service.impl;

import hu.nye.algorithm.traveler.model.other.Settlement;
import hu.nye.algorithm.traveler.repository.SettlementRepository;
import hu.nye.algorithm.traveler.service.SettlementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SettlementServiceImpl implements SettlementService {

    @Autowired
    private SettlementRepository settlementRepository;

    @Override
    public List<Settlement> getAllSettlements() {
        return settlementRepository.findAll();
    }

    @Override
    public Optional<Settlement> findSettlement(Long id) {

        return settlementRepository.findById(id);
    }
}
