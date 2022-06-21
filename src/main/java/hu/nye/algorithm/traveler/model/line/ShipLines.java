package hu.nye.algorithm.traveler.model.line;

import hu.nye.algorithm.traveler.model.line.pk.ShipLinePK;
import hu.nye.algorithm.traveler.model.station.ShipStation;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@IdClass(ShipLinePK.class)
@Entity
@Table(name = "ship_lines")
public class ShipLines {

    @Id
    @OneToOne
    @JoinColumn(name = "ship_station_id_1", referencedColumnName = "ship_station_id")
    private ShipStation ship_station_id_1;

    @Id
    @OneToOne
    @JoinColumn(name = "ship_station_id_2", referencedColumnName = "ship_station_id")
    private ShipStation ship_station_id_2;

    @Column
    private float travel_distance;

    @Column
    private int travel_time;
}
