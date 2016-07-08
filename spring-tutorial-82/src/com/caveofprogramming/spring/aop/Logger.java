package com.caveofprogramming.spring.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {

	@Pointcut("within(com.caveofprogramming.spring.aop.*)")
	public void cameraSnap() {	
	}
	
	// Method is an "advice" to snap().  Run this before running snap.
	

	@Before("cameraSnap()")
	public void beforeAdvice() {
		System.out.println( "***************** Before advice *********************");
	}
	
	
}
