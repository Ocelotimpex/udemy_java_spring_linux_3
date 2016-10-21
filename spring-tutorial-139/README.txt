1) From Servers --> Tomcat --> Catalina --> context.xml

	<Resource name="jdbc/offers" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="mysqllocaldba01" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/springtest"/>
               
<<<<<<< HEAD
Adding this stoped the missing jdbc exception, but there are still issues.  

Day 2:  Now getting this error...

WARN - No mapping found for HTTP request with URI [/offers/] in DispatcherServlet with name 'offers'             
=======
Adding this stoped the missing jdbc exception, but there are still issues.

Determine the cause of the database error.               
>>>>>>> f54f7a441dcade5fecbd5bddc6eabe61e97271dc


10/4/2016 - Moving datasource.xml and jdbc.properties to com.caveofprogramming.spring.web.config from 
the test directory allowed the program to run on the server again.

Get Hibernate to validate:
https://docs.jboss.org/hibernate/validator/4.1/reference/en-US/html/validator-checkconstraints.html

Copy this: javax.persistence.validation.group.pre-persist,