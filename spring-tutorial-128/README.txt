Issues:

1) Login does not work.  

2) First review files under com.caveofprogramming.spring.web.test.config  (don't use files user src ... web.config)

3) datasource.xml - Profile points to dev or production environment. 

4) dao-context.xml - Also points to profile dev or production and contains:

<jee:jndi-lookup jndi-name="jdbc/offers" id="dataSource"
		expected-type="javax.sql.DataSource">
		
5) Review web.xml - dao-context.xml and service-context.xml should point to test

	classpath:com/caveofprogramming/spring/web/config/dao-context.xml
	classpath:com/caveofprogramming/spring/web/config/service-context.xml
	classpath:com/caveofprogramming/spring/web/config/security-context.xml		
	
6) datasource.xml points to com/caveofprogramming/spring/web/test/config/jdbc.properties

7) Getting this errorL

Context initialization failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'offersDao': Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException: Could not autowire method: public void com.caveofprogramming.spring.web.dao.OffersDao.setDataSource(javax.sql.DataSource); nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}


Tried removing Autowired statements from dao methods.