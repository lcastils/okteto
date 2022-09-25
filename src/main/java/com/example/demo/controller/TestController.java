package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    
    @GetMapping("/")
    public String getMessage() {
        return "hola mundo from cluster" + " nuevo mensaje test  "; 
    }

}
