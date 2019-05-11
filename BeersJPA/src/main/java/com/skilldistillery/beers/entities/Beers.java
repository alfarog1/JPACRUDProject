package com.skilldistillery.beers.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Beers {
	@Id
	private int id;
	private String name;
	private String brewery;
	private String style;
	private double abv;
	private String country;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrewery() {
		return brewery;
	}
	public void setBrewery(String brewery) {
		this.brewery = brewery;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public double getAbv() {
		return abv;
	}
	public void setAbv(double abv) {
		this.abv = abv;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "Beers [id=" + id + ", name=" + name + ", brewery=" + brewery + ", style=" + style + ", abv=" + abv
				+ ", country=" + country + "]";
	}
	public Beers(int id, String name, String brewery, String style, double abv, String country) {
		super();
		this.id = id;
		this.name = name;
		this.brewery = brewery;
		this.style = style;
		this.abv = abv;
		this.country = country;
	}
	public Beers() {
		super();
	}
	
	
	
	
}
