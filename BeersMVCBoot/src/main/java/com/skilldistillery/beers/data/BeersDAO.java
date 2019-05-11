package com.skilldistillery.beers.data;

import java.util.List;

import com.skilldistillery.beers.entities.Beers;

public interface BeersDAO {

	public List<Beers> findAll();

	public Beers findById(int bId);
	
	public List<Beers> searchBeers(String searchTerm);
	
	public Beers create(Beers beers);
	
	public Beers updateBeers(Beers beer);
	

}
