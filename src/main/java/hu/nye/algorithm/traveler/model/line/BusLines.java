package hu.nye.algorithm.traveler.model.line;

import hu.nye.algorithm.traveler.model.line.pk.BusLinePK;
import hu.nye.algorithm.traveler.model.station.BusStation;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@IdClass(BusLinePK.class)
@Entity
@Table(name = "bus_lines")
public class BusLines {

    @Id
    @OneToOne
    @JoinColumn(name = "bus_station_id_1", referencedColumnName = "bus_station_id")
    private BusStation bus_station_id_1;

    @Id
    @OneToOne
    @JoinColumn(name = "bus_station_id_2", referencedColumnName = "bus_station_id")
    private BusStation bus_station_id_2;

    @Column
    private float travel_distance;

    @Column
    private int travel_time;
}
