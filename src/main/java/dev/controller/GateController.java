package dev.controller;

import dev.service.GateService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/gate")
public class GateController {

    private GateService gateService;

    public GateController(GateService gateService) {
        this.gateService = gateService;
    }

    @GetMapping("/entry-permit")
    public Boolean entryPermit() {
        return gateService.entryPermit();
    }

}
