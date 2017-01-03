
When getting error...

org.springframework.transaction.CannotCreateTransactionException: Could not open JDBC Connection for transaction; nested exception is java.sql.SQLException: Cannot create JDBC driver of class '' for connect URL 'null'
	org.springframework.jdbc.datasource.DataSourceTransactionManager.doBegin(DataSourceTransactionManager.java:241)
	org.springframework.transaction.support.AbstractPlatformTransactionManager.getTransaction(AbstractPlatformTransactionManager.java:372)
	org.springframework.transaction.interceptor.TransactionAspectSupport.createTransactionIfNecessary(TransactionAspectSupport.java:417)
	org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:255)
	org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:94)
	org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:172)
	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:631)
	com.caveofprogramming.spring.web.dao.OffersDao$$EnhancerByCGLIB$$af0f7a83.getOffers(<generated>)
	com.caveofprogramming.spring.web.service.OffersService.getCurrent(OffersService.java:23)
	com.caveofprogramming.spring.web.service.OffersService$$FastClassByCGLIB$$aab6d9f0.invoke(<generated>)
	org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:627)
	com.caveofprogramming.spring.web.service.OffersService$$EnhancerByCGLIB$$d912ceec.getCurrent(<generated>)
	com.caveofprogramming.spring.web.controllers.HomeController.showHome(HomeController.java:26)
	
1) Make sure :

<Resource name="jdbc/spring" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="mysqllocaldba01" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/springtest"/>
               
               :  in Servers --> context.xml and jdbc.properties are pointing to the same thing.
               

2) Make sure the /context is the same.               