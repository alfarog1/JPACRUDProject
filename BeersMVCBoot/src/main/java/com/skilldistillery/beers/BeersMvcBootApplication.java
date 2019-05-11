package com.skilldistillery.beers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
//@EntityScan("com.skilldistillery.beers.")
public class BeersMvcBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(BeersMvcBootApplication.class, args);
	}

}
