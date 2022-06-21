package hu.nye.algorithm.traveler.model.line.pk;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@EqualsAndHashCode
@Getter
@Setter
public class BusLinePK implements Serializable {

    private int bus_station_id_1;

    private int bus_station_id_2;
}
