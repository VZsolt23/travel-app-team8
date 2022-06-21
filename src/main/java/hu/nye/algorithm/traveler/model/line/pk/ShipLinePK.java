package hu.nye.algorithm.traveler.model.line.pk;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@EqualsAndHashCode
@Getter
@Setter
public class ShipLinePK implements Serializable {

    private int ship_station_id_1;

    private int ship_station_id_2;
}
