package dev.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.UUID;

@Data

@Entity
@Table(name = "space")
public class Space {

    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "number", nullable = false)
    private String number;

    @Column(name = "uuid", nullable = false)
    private UUID uuid;
}
