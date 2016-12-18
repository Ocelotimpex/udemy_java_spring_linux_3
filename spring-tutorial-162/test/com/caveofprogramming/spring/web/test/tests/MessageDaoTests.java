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

import com.caveofprogramming.spring.web.dao.Message;
import com.caveofprogramming.spring.web.dao.MessagesDao;
import com.caveofprogramming.spring.web.dao.User;
import com.caveofprogramming.spring.web.dao.UsersDao;

@ActiveProfiles("dev")
@ContextConfiguration(locations = {
                "classpath:com/caveofprogramming/spring/web/config/dao-context.xml",
                "classpath:com/caveofprogramming/spring/web/config/security-context.xml",
                "classpath:com/caveofprogramming/spring/web/test/config/datasource.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class MessageDaoTests {



        @Autowired
        private MessagesDao messagesDao;

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
        
        @Before
        public void init() {
                JdbcTemplate jdbc = new JdbcTemplate(dataSource);

                jdbc.execute("delete from offers");
                jdbc.execute("delete from messages");
                jdbc.execute("delete from users");

        }
        
        @Test
        public void testSave() {
        	usersDao.create(user1);
            usersDao.create(user2);
            usersDao.create(user3);
            usersDao.create(user4);
            
            Message message1 = new Message("Test Subject 1", "Test content 1", "Issac Newton", "issac@newton.com",
            		user1.getUsername());
            messagesDao.saveOrUpdate(message1);
        }
     
}
