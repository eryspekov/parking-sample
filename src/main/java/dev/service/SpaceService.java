package dev.service;

import dev.domain.Space;

import java.util.UUID;

public interface SpaceService {
    Space findByUuid(UUID uuid);
}
