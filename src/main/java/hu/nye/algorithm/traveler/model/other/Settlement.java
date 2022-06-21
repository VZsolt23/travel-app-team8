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
@Table(name = "settlements")
public class Settlement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long settlement_id;

    @Column
    private String settlement_name;

    @Column
    private String settlement_type;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "country_id", referencedColumnName = "country_id")
    private Country country_id;

    @Column
    private int airport_number;

    @Column
    private int bus_station_number;

    @Column
    private int ship_station_number;

    @Column
    private int train_station_number;
}
