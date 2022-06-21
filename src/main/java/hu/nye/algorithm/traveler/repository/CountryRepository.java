package hu.nye.algorithm.traveler.repository;

import hu.nye.algorithm.traveler.model.other.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
}
