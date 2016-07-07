package com.caveofprogramming.spring.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {

	@Pointcut("execution(void com.caveofprogramming.spring.aop.Camera.snap())")
	public void cameraSnap() {	
	}
	
	// Method is an "advice" to snap().  Run this before running snap.
	

	@Before("cameraSnap()")
	public void aboutToTakePhoto() {
		System.out.println( "About to take photo...");
	}
}
