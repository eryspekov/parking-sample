package dev.domain;

import lombok.Data;
import lombok.Getter;

import javax.persistence.*;

@Data

@Entity
@Table(name = "space_state")
public class SpaceState {

    @ManyToOne
    @JoinColumn(name = "spce_id")
    private Space space;

    @Enumerated
    @Column(name = "status", nullable = false)
    private SpaceStatus status;

    @Getter
    public enum SpaceStatus {
        FREE("Свободно"),
        BUSY("Занято");

        private String name;

        SpaceStatus(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    }

}
