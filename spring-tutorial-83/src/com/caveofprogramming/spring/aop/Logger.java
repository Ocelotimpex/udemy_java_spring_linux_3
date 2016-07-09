package com.caveofprogramming.spring.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {

	@Pointcut("within(com.caveofprogramming.spring..*)")
	public void withinDemo() {	
	}
	
	// Method is an "advice" to snap().  Run this before running snap.
	
	@Pointcut("target(com.caveofprogramming.spring.aop.Camera)")
	public void targetDemo() {	
	}

	@Pointcut("this(com.caveofprogramming.spring.aop.ICamera)")
	public void thisDemo() {	
	}
	
	@Before("withinDemo()")
	public void withinDemoAdvice() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}
	
	@Before("targetDemo()")
	public void targetDemoAdvice() {
		System.out.println( "***************** TARGET DEMO *********************");
	}
	
	@Before("targetDemo()")
	public void thisDemoAdvice() {
		System.out.println( "***************** THIS DEMO *********************");
	}
	
	
}
