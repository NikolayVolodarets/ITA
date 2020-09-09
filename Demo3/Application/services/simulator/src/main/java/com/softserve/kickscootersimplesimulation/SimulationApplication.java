package com.softserve.kickscootersimplesimulation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class SimulationApplication {
	public static void main(String[] args) {
		SpringApplication.run(SimulationApplication.class, args);
	}
}
