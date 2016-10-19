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
		"classpath:com/caveofprogramming/spring/web/config/service-context.xml",
		"classpath:com/caveofprogramming/spring/web/config/datasource.xml" })
@RunWith(SpringJUnit4ClassRunner.class)

public class UserDaoTests {
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private OffersDao offersDao;
	
	@Autowired
	private DataSource dataSource;
	
	private User user1 = new User( "amandaking", "Amanda King", "Spy app", "amanda@king.com", true, "ROLE_ADMIN");
	private User user2 = new User( "jilldanko", "Jill Danko", "Hosipial app", "jill@danko.com", true, "ROLE_ADMIN");
	private User user3 = new User( "peggymaxwell", "Peggy Maxwell", "Office app", "peggy@maxwell.com", true, "ROLE_ADMIN");
	private User user4 = new User( "sabrinaduncan", "Sabrina Duncan", "Dectective app", "sabrina@duncan.com", true, "ROLE_ADMIN");
	
	
	@Before
	public void init() {
		JdbcTemplate jdbc = new JdbcTemplate( dataSource );
		
		jdbc.execute( "delete from offers");
		jdbc.execute( "delete from users");
	}
	
	@Test
	public void testCreateRetrieve() {
		usersDao.create(user1);
		
		List<User> users1 = usersDao.getAllUsers();
		
		assertEquals("One user should have been created and retrieved", 1, users1.size() );
		assertEquals("Inserted user should match retrieved", user1, users1.get(0));
		
		usersDao.create(user2);
		usersDao.create(user3);
		usersDao.create(user4);
		
		List<User> users2 = usersDao.getAllUsers();
		assertEquals("Should be four retreived users.",4, users2.size() );
	}
	
	// TODO - Reimplement this
	@Test
	public void testUsers() {
		
		
		
	   User user = new User("johnwpurcell", "John Purcell", "hellothere", "john@caveorprogramming.com", true, "user");
		 
		
	   usersDao.create(user);
		
		List<User> users = usersDao.getAllUsers();
		
		assertEquals("Number of users should be 1", 1, users.size() );
		
		assertTrue( "User should exist", usersDao.exists( user.getUsername()));
		
		assertEquals("Created user should be identical to retrieved user", user, users.get(0) );
		
	
	}

}
