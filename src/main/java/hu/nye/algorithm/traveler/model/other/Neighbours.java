package hu.nye.algorithm.traveler.model.other;

import hu.nye.algorithm.traveler.model.line.pk.NeightbourPK;
import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
@IdClass(NeightbourPK.class)
@Entity
@Table(name = "neighbours")
public class Neighbours {

    @Id
    @OneToOne
    @JoinColumn(name = "country_id_1", referencedColumnName = "country_id")
    private Country country_id_1;

    @Id
    @OneToOne
    @JoinColumn(name = "country_id_2", referencedColumnName = "country_id")
    private Country country_id_2;
}
