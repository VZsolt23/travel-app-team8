package hu.nye.algorithm.traveler.model.line.pk;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@EqualsAndHashCode
@Getter
@Setter
public class FlightPK implements Serializable {

    private int airport_id_1;

    private int airport_id_2;

}
