package com.caveofprogramming.spring.web.controllers;


import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.caveofprogramming.spring.web.dao.FormValidationGroup;
import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.PersistenceValidationGroup;
import com.caveofprogramming.spring.web.service.OffersService;

@Controller
public class OffersController {
	
	private OffersService offersService;	

	@Autowired
	public void setOffersService(OffersService offersService) {
		this.offersService = offersService;
	}

	
	// Call using : http://localhost:8080/offers/test?id=723
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String showTest(Model model,@RequestParam("id") String id) {

		System.out.println("ID is: " + id);
		return "home";
	}
	
	/*
	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException(DataAccessException ex) {
		return "error";
	}
	*/
	
	@RequestMapping("/offers")
	public String showOffers(Model model) {
		
		//offersService.throwTestException();

		List<Offer> offers = offersService.getCurrent();
		
		model.addAttribute("offers", offers);

		return "offers";
	}
	/*
	private Object OffersService() {
		// TODO Auto-generated method stub
		return null;
	}


	private Object offersService() {
		// TODO Auto-generated method stub
		return null;
	}
*/

	@RequestMapping("/createoffer")
	public String createOffer(Model model, Principal principal) {
		
		Offer offer = null;
		
		if ( principal != null ) {
			String username = principal.getName();
			
			System.out.println("DEBUG : OffersConroller : username " + username );
			
			offer = offersService.getOffer( username );
		}
		
		if ( offer == null ) {
			offer = new Offer();
		}
		
		model.addAttribute("offer", offer );

		return "createoffer";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, 
			               @Validated(value=FormValidationGroup.class) Offer offer, 
			               BindingResult result, 
			               Principal principal, 
			               @RequestParam(value="delete",required=false) String delete ) { 
		if (result.hasErrors()) {
			return "createoffer";			
		} 
		
		if ( delete == null ) {
			//System.out.println( "delete is null");
			String username = principal.getName();
			offer.getUser().setUsername( username );
			offersService.saveOrUpdate(offer);
			return "offercreated";
		} else {
			//System.out.println( "delete not is null");
			offersService.delete(offer.getId());
			return "offerdeleted";
		} 
		
		/*String username = principal.getName();
		System.out.println("DEBUG /docreate username = " + username );
		
		offer.getUser().setUsername( username );
		
		offersService.saveOrUpdate(offer);
		
		return "offercreated"; */
	}
}