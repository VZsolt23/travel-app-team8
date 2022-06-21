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
@Table(name = "countries")
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long country_id;

    @Column
    private String country_name;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "region_id", referencedColumnName = "region_id")
    private Region region_id;

    @Column
    private int settlement_number;

    @Column
    private int airport_number;

    @Column
    private int train_station_number;

    @Column
    private int bus_station_number;

    @Column
    private int ship_station_number;
}
