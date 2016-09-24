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

8) From Servers ----> context.xml

Production

<Resource name="jdbc/spring" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="mysqllocaldba01" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/springtutorial"/>
               
DEV

<Resource name="jdbc/spring" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="mysqllocaldba01" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/springtest"/>
               
9) Try @Autowired @Qualifier("dataSource"), making sure the data source bean has an ID, "dataSource". 
If it doesn't work, I suspect your dependencies. I'm curious if it tells you there is no bean with ID datasource.    

10) Added commons-pool 1.5.6  

11) Error message ...

ERROR - Context initialization failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'offersDao': Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException: Could not autowire method: public void com.caveofprogramming.spring.web.dao.OffersDao.setDataSource(javax.sql.DataSource); nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:288)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.populateBean(AbstractAutowireCapableBeanFactory.java:1116)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:519)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:458)
	at org.springframework.beans.factory.support.AbstractBeanFactory$1.getObject(AbstractBeanFactory.java:295)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:223)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:292)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:194)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.preInstantiateSingletons(DefaultListableBeanFactory.java:626)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:932)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:479)
	at org.springframework.web.context.ContextLoader.configureAndRefreshWebApplicationContext(ContextLoader.java:389)
	at org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:294)
	at org.springframework.web.context.ContextLoaderListener.contextInitialized(ContextLoaderListener.java:112)
	at org.apache.catalina.core.StandardContext.listenerStart(StandardContext.java:4842)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5303)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:147)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1407)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1397)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.springframework.beans.factory.BeanCreationException: Could not autowire method: public void com.caveofprogramming.spring.web.dao.OffersDao.setDataSource(javax.sql.DataSource); nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredMethodElement.inject(AutowiredAnnotationBeanPostProcessor.java:601)
	at org.springframework.beans.factory.annotation.InjectionMetadata.inject(InjectionMetadata.java:87)
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:285)
	... 22 more
Caused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.raiseNoSuchBeanDefinitionException(DefaultListableBeanFactory.java:986)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.doResolveDependency(DefaultListableBeanFactory.java:856)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.resolveDependency(DefaultListableBeanFactory.java:768)
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredMethodElement.inject(AutowiredAnnotationBeanPostProcessor.java:558)
	... 24 more
Sep 23, 2016 11:50:32 PM org.apache.catalina.core.StandardContext listenerStart
SEVERE: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'offersDao': Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException: Could not autowire method: public void com.caveofprogramming.spring.web.dao.OffersDao.setDataSource(javax.sql.DataSource); nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:288)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.populateBean(AbstractAutowireCapableBeanFactory.java:1116)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:519)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:458)
	at org.springframework.beans.factory.support.AbstractBeanFactory$1.getObject(AbstractBeanFactory.java:295)
	at org.springframework.beans.factory.support.DefaultSingletonBeanRegistry.getSingleton(DefaultSingletonBeanRegistry.java:223)
	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:292)
	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:194)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.preInstantiateSingletons(DefaultListableBeanFactory.java:626)
	at org.springframework.context.support.AbstractApplicationContext.finishBeanFactoryInitialization(AbstractApplicationContext.java:932)
	at org.springframework.context.support.AbstractApplicationContext.refresh(AbstractApplicationContext.java:479)
	at org.springframework.web.context.ContextLoader.configureAndRefreshWebApplicationContext(ContextLoader.java:389)
	at org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:294)
	at org.springframework.web.context.ContextLoaderListener.contextInitialized(ContextLoaderListener.java:112)
	at org.apache.catalina.core.StandardContext.listenerStart(StandardContext.java:4842)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5303)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:147)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1407)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1397)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.springframework.beans.factory.BeanCreationException: Could not autowire method: public void com.caveofprogramming.spring.web.dao.OffersDao.setDataSource(javax.sql.DataSource); nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredMethodElement.inject(AutowiredAnnotationBeanPostProcessor.java:601)
	at org.springframework.beans.factory.annotation.InjectionMetadata.inject(InjectionMetadata.java:87)
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:285)
	... 22 more
Caused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type [javax.sql.DataSource] found for dependency: expected at least 1 bean which qualifies as autowire candidate for this dependency. Dependency annotations: {}
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.raiseNoSuchBeanDefinitionException(DefaultListableBeanFactory.java:986)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.doResolveDependency(DefaultListableBeanFactory.java:856)
	at org.springframework.beans.factory.support.DefaultListableBeanFactory.resolveDependency(DefaultListableBeanFactory.java:768)
	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredMethodElement.inject(AutowiredAnnotationBeanPostProcessor.java:558)
	... 24 more        
               
                              