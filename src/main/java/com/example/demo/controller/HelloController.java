package com.example.demo.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
public class HelloController {

//    @Value("${test.data}")
//    private String test;

    @GetMapping("/hello")
    public String sayHello() {
        log.debug("Debug log");
        log.info("Info log");
//        System.out.println("test: " + test);
        return "Hello from CI/CD!!!!!";
    }
}
