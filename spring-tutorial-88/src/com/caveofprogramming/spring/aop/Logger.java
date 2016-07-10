package com.caveofprogramming.spring.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {

	//@Pointcut("args(exposure, aperture)")
	//public void somePointcut(int exposure, double aperture) {
	@Pointcut("args(exposure, ..)")
	public void somePointcut(int exposure) {	
	}
	
	//@Before("somePointcut(exposure, aperture)")
	//public void somePointcutDemo(JoinPoint jp,  int exposure, double aperture) {
	@Before("somePointcut(exposure)")
	public void somePointcutDemo(JoinPoint jp,  int exposure) {
		System.out.println( "***************** BEFORE DEMO *********************");
		
		//System.out.printf( "exposure %d, aperture %2f\n", exposure, aperture);
		System.out.printf( "exposure %d\n", exposure);
	}	
}
