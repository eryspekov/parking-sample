package dev.service;

import dev.domain.SpaceState;

public interface SpaceStateService {
    SpaceState setState(SpaceState spaceState);

    Integer numberFreeSpaces();
}

