package hu.nye.algorithm.traveler.model.other;

import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "geo_regions")
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long region_id;

    @Column
    private String region_name;

    @Column
    private int country_number;

    @Column
    private int airport_number;

    @Column
    private int train_station_number;

    @Column
    private int bus_station_number;

    @Column
    private int ship_station_number;
}
