package dev.service.impl;

import dev.domain.Space;
import dev.repository.SpaceRepository;
import dev.service.SpaceService;
import org.hibernate.ObjectNotFoundException;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class DefaultSpaceService implements SpaceService {

    private SpaceRepository spaceRepository;

    public DefaultSpaceService(SpaceRepository spaceRepository) {
        this.spaceRepository = spaceRepository;
    }

    @Override
    public Space findByUuid(UUID uuid) {
        return spaceRepository.findByUuid(uuid)
                .orElseThrow(() -> new ObjectNotFoundException(uuid, Space.class.getSimpleName()));
    }
}
