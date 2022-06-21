package hu.nye.algorithm.traveler.model.line;

import hu.nye.algorithm.traveler.model.line.pk.FlightPK;
import hu.nye.algorithm.traveler.model.station.Airport;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@IdClass(FlightPK.class)
@Entity
@Table(name = "flights")
public class Flights {

    @Id
    @OneToOne
    @JoinColumn(name = "airport_id_1", referencedColumnName = "airport_id")
    private Airport airport_id_1;

    @Id
    @OneToOne
    @JoinColumn(name = "airport_id_2", referencedColumnName = "airport_id")
    private Airport airport_id_2;

    @Column
    private float travel_distance;

    @Column
    private int travel_time;
}
