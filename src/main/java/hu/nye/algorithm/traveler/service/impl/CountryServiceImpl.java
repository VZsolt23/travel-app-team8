package hu.nye.algorithm.traveler.service.impl;

import hu.nye.algorithm.traveler.model.other.Country;
import hu.nye.algorithm.traveler.repository.CountryRepository;
import hu.nye.algorithm.traveler.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService {

    @Autowired
    private CountryRepository countryRepository;

    @Override
    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }
}
