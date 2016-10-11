package com.caveofprogramming.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.OffersDao;

@Service("offersService")
public class OffersService {
	
	private OffersDao offersDao;
	
	@Autowired
	public void setOffersDao(OffersDao offersDao) {
		this.offersDao = offersDao;
	}

	public List<Offer> getCurrent() {
		return offersDao.getOffers();
	}

	@Secured({"ROLE_USER","ROLE_ADMIN"})
	public void create(Offer offer) {
		offersDao.create(offer);
		
	}

	public boolean hasOffer(String name) {
		// TODO Auto-generated method stub
		System.out.println( "DEBUG hasOffer name = " + name );
		if ( name == null) return false;
		
		System.out.println( "DEBUG : Still in hasOffers");
		
		List<Offer> offers = offersDao.getOffers(name);
		System.out.println( "DEBUG : List offers.size() : " + offers.size() );
		System.out.println( "DEBUG : List offers" + offers );
		
		if ( offers.size() == 0) {
			System.out.print("DEBUG hasOffer: offers.size() = " + offers.size() ) ;
			return false;
		}
		
		return true;
	}

}
