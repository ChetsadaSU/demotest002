package com.example.demotest002;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class DemoTest002Application {
	public static void main(String[] args) {
		SpringApplication.run(DemoTest002Application.class, args);
	}
}

@RestController
class TestController {

	@GetMapping("/test1")
	public String welcome() {
		return "frung";
	}
}
