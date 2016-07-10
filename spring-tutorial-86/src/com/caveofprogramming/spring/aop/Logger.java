package com.caveofprogramming.spring.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {

	//@Pointcut("args")
	//@Pointcut("args(int)")
	//@Pointcut("args(int,double)")
	//@Pointcut("args(com.caveofprogramming.spring.aop.Car)")
	//@Pointcut("args(int,*)")
	//@Pointcut("args(int,..)")
	//@Pointcut("args(..,double)")
	//@Pointcut("args(..,int)")
	//@Pointcut("args(Object)")
	//@Pointcut("args(Integer)")
	@Pointcut("args(Double)")
	public void somePointcut() {	
	}
	
	@Before("somePointcut()")
	public void somePointcutDemo() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}	
}
