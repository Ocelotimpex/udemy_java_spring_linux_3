1) From Servers --> Tomcat --> Catalina --> context.xml

	<Resource name="jdbc/offers" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="mysqllocaldba01" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/springtest"/>
               
Adding this stoped the missing jdbc exception, but there are still issues.               