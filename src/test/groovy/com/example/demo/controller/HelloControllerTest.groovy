package com.example.demo.controller

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.test.web.servlet.MockMvc
import spock.lang.Specification
import org.springframework.test.web.servlet.result.MockMvcResultMatchers

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get

@WebMvcTest(HelloController)
class HelloControllerSpec extends Specification {

    @Autowired
    MockMvc mockMvc

    def "should return hello message"() {
        expect:
        mockMvc.perform(get("/hello"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().string("Hello from CI/CD!!!!!"))
    }
}
