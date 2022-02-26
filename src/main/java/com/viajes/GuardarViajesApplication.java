package com.viajes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController

public class GuardarViajesApplication {

	public static void main(String[] args) {
		SpringApplication.run(GuardarViajesApplication.class, args);
	}

}
