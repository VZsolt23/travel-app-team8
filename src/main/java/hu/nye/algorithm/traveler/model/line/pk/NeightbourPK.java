package hu.nye.algorithm.traveler.model.line.pk;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@EqualsAndHashCode
@Getter
@Setter
public class NeightbourPK implements Serializable {

    private int country_id_1;

    private int country_id_2;

}
