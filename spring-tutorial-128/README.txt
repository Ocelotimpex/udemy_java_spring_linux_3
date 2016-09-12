Issues:

1) Login does not work.  

2) First review files under com.caveofprogramming.spring.web.test.config  (don't use files unser src ... web.config)

3) datasource.xml - Profile points to dev or production environment. 

4) dao-context.xml - Also points to profile dev or production and contains:

<jee:jndi-lookup jndi-name="jdbc/offers" id="dataSource"
		expected-type="javax.sql.DataSource">
		
5) Review web.xml - dao-context.xml and service-context.xml should point to test

	classpath:com/caveofprogramming/spring/web/config/dao-context.xml
	classpath:com/caveofprogramming/spring/web/config/service-context.xml
	classpath:com/caveofprogramming/spring/web/config/security-context.xml		
	
6) datasource.xml points to com/caveofprogramming/spring/web/test/config/jdbc.properties