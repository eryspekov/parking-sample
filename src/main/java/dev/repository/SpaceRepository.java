package dev.repository;

import dev.domain.Space;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.UUID;

public interface SpaceRepository extends JpaRepository<Space, Integer> {
    Optional<Space> findByUuid(UUID uuid);
}
