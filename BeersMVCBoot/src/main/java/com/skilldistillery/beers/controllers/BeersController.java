package com.skilldistillery.beers.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.beers.data.BeersDAO;
import com.skilldistillery.beers.entities.Beers;

@Controller
public class BeersController {
	@Autowired
	private BeersDAO beersDAO;

//	@RequestMapping(path = "/")
//	public String index() {
//		System.out.println("test");
//		return "WEB-INF/index.jsp";
//		// return "index"; // if using a ViewResolver.
//	}

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		// TODO : Retrieve beer list, add it to the model.
		List<Beers> beerList = beersDAO.findAll();

		model.addAttribute("beerList", beerList);

		return "/WEB-INF/index.jsp";
	}
	
	// CRUD - CREATE
	@RequestMapping(path = "addBeerView.do", method = RequestMethod.GET)
	public ModelAndView addBeerView() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("beers", new Beers());
		mv.setViewName("WEB-INF/beer/add.jsp");
		return mv;
	}
	
	// CRUD - CREATE
	@RequestMapping(path = "addBeer.do", method = RequestMethod.POST)
	public ModelAndView addBeer(@ModelAttribute("beers")Beers beer) {
		ModelAndView mv = new ModelAndView();
		System.out.println(beer);
		Beers newbeer = beersDAO.create(beer);
		System.out.println(newbeer);
		
		mv.addObject("beer", newbeer);
		mv.setViewName("WEB-INF/beer/show.jsp");
		return mv;
		
	}

	// CRUD - READ
	@RequestMapping(path = "getBeers.do", method = RequestMethod.GET)
	public ModelAndView getBeers(@RequestParam("bId") int bId) {
		ModelAndView mv = new ModelAndView();

		Beers beer = beersDAO.findById(bId);
		// beer is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("beer", beer);
		mv.setViewName("WEB-INF/beer/show.jsp");
		return mv;
	}

	// CRUD - READ
	@RequestMapping(path = "getBeersbyKey.do", method = RequestMethod.GET)
	public ModelAndView findByKeyword(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Beers> beerlist = beersDAO.searchBeers(keyword);

		mv.addObject("beerList", beerlist);
		mv.setViewName("WEB-INF/beer/results.jsp");
		return mv;
	}
	
	// CRUD - UPDATE
	@RequestMapping(path = "updateBeers.do", method = RequestMethod.POST)
	public ModelAndView updateBeers(@ModelAttribute("beers")Beers beer) {
		ModelAndView mv = new ModelAndView();
		Beers updatedBeers = beersDAO.updateBeers(beer);
		List<Beers> updatedBeersList = new ArrayList<>();
		updatedBeersList.add(updatedBeers);
		
		mv.addObject("beerList", updatedBeersList);
		mv.setViewName("WEB-INF/beer/results.jsp");
		return mv;
	}
	
	// CRUD - UPDATE
		@RequestMapping(path = "updateBeerView.do", method = RequestMethod.GET)
		public ModelAndView updateBeerView(int id) {
			ModelAndView mv = new ModelAndView();
			System.out.println(id);
			Beers updateBeer = beersDAO.findById(id);
			mv.addObject("beers", updateBeer);
			mv.setViewName("WEB-INF/beer/update.jsp");
			return mv;
		}
		
	// CRUD - DELETE
		@RequestMapping(path = "deleteBeer.do", method = RequestMethod.GET)
		public ModelAndView deleteBeer(int id) {
			ModelAndView mv = new ModelAndView();
			beersDAO.breakBeers(id);
			List<Beers> beerList = beersDAO.findAll();

			mv.addObject("beerList", beerList);
			mv.setViewName("/WEB-INF/index.jsp");
			
			return mv;
		}
		

}
