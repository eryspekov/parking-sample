package dev.service.impl;

import dev.service.GateService;
import dev.service.SpaceStateService;
import org.springframework.stereotype.Service;

@Service
public class DefaultGateService implements GateService {

    private SpaceStateService spaceStateService;

    public DefaultGateService(SpaceStateService spaceStateService) {
        this.spaceStateService = spaceStateService;
    }

    @Override
    public Boolean entryPermit() {
        Integer integer = spaceStateService.numberFreeSpaces();
        return integer > 0;
    }
}
