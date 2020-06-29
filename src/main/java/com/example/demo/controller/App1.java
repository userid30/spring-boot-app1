package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class App1 {
	
	@GetMapping("/app1")
	public String getData() {
		return "Welcome to spring boot example:-App1 ";
	}

}
