package dev.controller;

import dev.domain.SpaceState;
import dev.service.SpaceStateService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/space")
public class SpaceStateController {

    private SpaceStateService spaceStateService;

    public SpaceStateController(SpaceStateService spaceStateService) {
        this.spaceStateService = spaceStateService;
    }

    @PostMapping("/set-state")
    public SpaceState setState(@RequestBody SpaceState spaceState) {
        return spaceStateService.setState(spaceState);
    }

    @GetMapping("/number-free-spaces")
    public Integer numberFreeSpaces() {
        return spaceStateService.numberFreeSpaces();
    }
}
