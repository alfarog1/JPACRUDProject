package com.skilldistillery.beers.entities.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.beers.entities.Beers;

class BeersTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BeersPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test() {
		Beers b = em.find(Beers.class, 1);
		assertEquals("Heineken", b.getName());
		assertEquals("Heineken", b.getBrewery());
		assertEquals("Pale lager", b.getStyle());
		assertEquals(5.0, b.getAbv());
		assertEquals("Netherlands", b.getCountry());
		assertEquals("https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/092011/heineken_06_0.png", b.getLogoUrl());
	}

}
