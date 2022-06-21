package hu.nye.algorithm.traveler.model.line;

import hu.nye.algorithm.traveler.model.line.pk.TrainLinePK;
import hu.nye.algorithm.traveler.model.station.TrainStation;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@IdClass(TrainLinePK.class)
@Entity
@Table(name = "train_lines")
public class TrainLines {

    @Id
    @OneToOne
    @JoinColumn(name = "train_station_id_1", referencedColumnName = "train_station_id")
    private TrainStation train_station_id_1;

    @Id
    @OneToOne
    @JoinColumn(name = "train_station_id_2", referencedColumnName = "train_station_id")
    private TrainStation train_station_id_2;

    @Column
    private float travel_distance;

    @Column
    private int travel_time;
}
