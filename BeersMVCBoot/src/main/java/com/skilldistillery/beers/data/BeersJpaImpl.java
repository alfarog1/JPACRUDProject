package com.skilldistillery.beers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beers.entities.Beers;

@Transactional
@Service
public class BeersJpaImpl implements BeersDAO {
	@PersistenceContext
	private  EntityManager em;
	
	@Override
	public List<Beers> findAll() {
		String query = "SELECT b FROM Beers b";
		List<Beers> beers = em.createQuery(query, Beers.class).getResultList();
		return beers;
	}

	@Override
	public Beers findById(int bId) {
		Beers beers = em.find(Beers.class, bId);
		
		return beers;
	}
	
	@Override
	public List<Beers> searchBeers(String keyword) {
		String query = "SELECT b FROM Beers b WHERE b.name LIKE :term OR b.brewery LIKE :term";
		 List <Beers> results =
			      em.createQuery(query, Beers.class)
			      .setParameter("term", "%"+keyword+"%")
			      .getResultList();
		return results;
	}

	@Override
	public Beers create(Beers beers) {
		System.out.println(beers + "create");
		Beers beer = new Beers();
		beer.setAbv(beers.getAbv());
		beer.setBrewery(beers.getBrewery());
		beer.setCountry(beers.getCountry());
		beer.setName(beers.getName());
		beer.setStyle(beers.getStyle());
		// write the beer to the database
		em.persist(beer);
		// update the "local" beer object
		em.flush();
		return beer;
	}

}
