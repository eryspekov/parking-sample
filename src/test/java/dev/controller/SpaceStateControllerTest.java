package dev.controller;

import dev.service.SpaceStateService;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;

@WebMvcTest(SpaceStateController.class)
class SpaceStateControllerTest {

    @MockBean
    private SpaceStateService spaceStateService;

    @Test
    void numberFreeSpaces() {
    }
}
