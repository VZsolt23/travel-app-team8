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
@Table(name = "ship_stations")
public class ShipStation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ship_station_id;

    @Column
    private String ship_station_name;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "settlement_id", referencedColumnName = "settlement_id")
    private Settlement settlement_id;

    @Column
    private String GPS1;

    @Column
    private  String GPS2;
}
