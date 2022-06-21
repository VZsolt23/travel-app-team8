package hu.nye.algorithm.traveler.service.impl;

import hu.nye.algorithm.traveler.model.other.Region;
import hu.nye.algorithm.traveler.repository.RegionRepository;
import hu.nye.algorithm.traveler.service.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegionServiceImpl implements RegionService {

    @Autowired
    private RegionRepository regionRepository;

    @Override
    public List<Region> getAllRegions() {
        return regionRepository.findAll();
    }
}
