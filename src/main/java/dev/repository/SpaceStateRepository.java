package dev.repository;

import dev.domain.SpaceState;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpaceStateRepository extends JpaRepository<SpaceState, Integer> {
    Integer countByStatus(SpaceState.SpaceStatus status);
}
