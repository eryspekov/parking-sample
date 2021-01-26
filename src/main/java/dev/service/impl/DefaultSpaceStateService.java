package dev.service.impl;

import dev.domain.Space;
import dev.domain.SpaceState;
import dev.repository.SpaceStateRepository;
import dev.service.SpaceService;
import dev.service.SpaceStateService;
import org.springframework.stereotype.Service;

@Service
public class DefaultSpaceStateService implements SpaceStateService {

    private SpaceStateRepository spaceStateRepository;
    private SpaceService spaceService;

    public DefaultSpaceStateService(SpaceStateRepository spaceStateRepository,
                                    SpaceService spaceService) {
        this.spaceStateRepository = spaceStateRepository;
        this.spaceService = spaceService;
    }

    @Override
    public SpaceState setState(SpaceState spaceState) {
        Space space = spaceService.findByUuid(spaceState.getSpace().getUuid());
        spaceState.setSpace(space);
        return spaceStateRepository.save(spaceState);
    }

    @Override
    public Integer numberFreeSpaces() {
        return spaceStateRepository.countByStatus(SpaceState.SpaceStatus.FREE);
    }
}
