package hu.nye.algorithm.traveler.model.station;

import hu.nye.algorithm.traveler.model.other.Settlement;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "bus_stations")
public class BusStation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long bus_station_id;

    @Column
    private String bus_station_name;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "settlement_id", referencedColumnName = "settlement_id")
    private Settlement settlement_id;

    @Column
    private String GPS1;

    @Column
    private  String GPS2;
}
