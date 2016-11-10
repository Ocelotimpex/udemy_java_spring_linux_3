package com.caveofprogramming.spring.web.test.tests;

import static org.junit.Assert.*;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.OffersDao;
import com.caveofprogramming.spring.web.dao.User;
import com.caveofprogramming.spring.web.dao.UsersDao;

@ActiveProfiles("dev")
@ContextConfiguration(locations = {
                "classpath:com/caveofprogramming/spring/web/config/dao-context.xml",
                "classpath:com/caveofprogramming/spring/web/config/security-context.xml",
                "classpath:com/caveofprogramming/spring/web/test/config/datasource.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class OffersDaoTests {



        @Autowired
        private OffersDao offersDao;

        @Autowired
        private UsersDao usersDao;

        @Autowired
        private DataSource dataSource;

        private User user1 = new User("johnwpurcell", "John Purcell", "hellothere",
                        "john@caveofprogramming.com", true, "ROLE_USER");
        private User user2 = new User("richardhannay", "Richard Hannay", "the39steps",
                        "richard@caveofprogramming.com", true, "ROLE_ADMIN");
        private User user3 = new User("suetheviolinist", "Sue Black", "iloveviolins",
                        "sue@caveofprogramming.com", true, "ROLE_USER");
        private User user4 = new User("rogerblake", "Rog Blake", "liberator",
                        "rog@caveofprogramming.com", false, "user");


        private Offer offer1 = new Offer(user1, "This is a test offer.");
        private Offer offer2 = new Offer(user1, "This is another test offer.");
        private Offer offer3 = new Offer(user2, "This is yet another test offer.");
        private Offer offer4 = new Offer(user3, "This is a test offer once again.");
        private Offer offer5 = new Offer(user3, "Here is an interesting offer of some kind.");
        private Offer offer6 = new Offer(user3, "This is just a test offer.");
        private Offer offer7 = new Offer(user4, "This is a test offer for a user that is not enabled.");

        @Before
        public void init() {
                JdbcTemplate jdbc = new JdbcTemplate(dataSource);

                jdbc.execute("delete from offers");
                jdbc.execute("delete from users");
                createTestObjects() ;
        }
        
        public void createTestObjects() {
        	usersDao.create(user1);
            usersDao.create(user2);
            usersDao.create(user3);
            usersDao.create(user4);

            System.out.println( "createTestObjects: offer1 ==> " + offer1 );
            offersDao.saveOrUpdate(offer2);
            System.out.println( "createTestObjects: offer2 ==> " + offer2 );
            offersDao.saveOrUpdate(offer3);
            System.out.println( "createTestObjects: offer3 ==> " + offer3 );
            offersDao.saveOrUpdate(offer4);
            System.out.println( "createTestObjects: offer4 ==> " + offer4 );
            offersDao.saveOrUpdate(offer5);
            System.out.println( "createTestObjects: offer5 ==> " + offer5 );
            offersDao.saveOrUpdate(offer6);
            System.out.println( "createTestObjects: offer6 ==> " + offer6 );
            offersDao.saveOrUpdate(offer7);          
            System.out.println( "createTestObjects: offer7 ==> " + offer7 );
        }
        
        @Test
        public void testDelete() {
        	
        	System.out.println( "testDelete" );
        
        	//createTestObjects();

            Offer retrieved2 = offersDao.getOffer( offer2.getId());
           // assertEquals("Offer with id " + retrieved2.getId() + " should be null (deleted, actual)", retrieved1.getId() );

            
            offersDao.delete( offer2.getId());
            Offer retrieved1 = offersDao.getOffer( offer2.getId());
            //assertEquals("Offer with id " + retrieved1.getId() + " should be null (deleted, actual)", retrieved1.getId() );
        }

        @Test
        public void testCreateRetrieve() {
        	
        	    System.out.println( "testCreateRetrieve" );
        	
        	    //createTestObjects();

                offersDao.saveOrUpdate(offer1);

                List<Offer> offers1 = offersDao.getOffers();
                assertEquals("Should be one offer.", 6, offers1.size());

                assertEquals("Retrieved offer should equal inserted offer.", offer1, offers1.get(1));


                List<Offer> offers2 = offersDao.getOffers();
                assertEquals("Should be six offers for enabled users.", 6, offers2.size());
        }
        
        @Test
        public void testGetById() {
        	System.out.println( "testGetById" );
        	//createTestObjects();
        	
        	Offer retrieve1 = offersDao.getOffer(offer2.getId());
        	System.out.println( "testGetById: offer2 ==> " + offer2 );
        	System.out.println( "testGetById: retrieve1 ==> " + retrieve1 );
        	assertEquals( "Offers should match", offer2, retrieve1 );
        	
        	Offer retrieve2 = offersDao.getOffer(offer7.getId());
        	System.out.println( "testGetById: retrieve2 ==> " + retrieve2 );
        	assertNull( "Should not retrieve offer from disabled user", retrieve2 );
        	
        }
        
        @Test
        public void testGetUsername() {
        	
        	System.out.println( "testGetUsername" );
        	
        	//createTestObjects();
            
            List<Offer> offers1 = offersDao.getOffers(user3.getUsername());           
            assertEquals("Should be three offers for this user", 3, offers1.size());

            List<Offer> offers2 = offersDao.getOffers("kkxhdsx0wsew");           
            assertEquals("Should be three offers for this user", 0, offers2.size());
            
            List<Offer> offers3 = offersDao.getOffers(user2.getUsername());           
            assertEquals("Should be one offer1 for this user", 1, offers3.size());

            
        }
        
        @Test
        public void testUpdate() {
        	
        	System.out.println( "testUpdate" );
        	
        	//createTestObjects();
            
            offer3.setText( "This offer has updated test.");
            offersDao.saveOrUpdate(offer3);
            
            Offer retrived = offersDao.getOffer(offer3.getId());
            assertEquals( "Retrived offer should be updated.", offer3, retrived);

            System.out.println( retrived.getText() );

        }

    
}
