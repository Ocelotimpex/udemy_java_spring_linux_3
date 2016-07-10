package com.caveofprogramming.spring.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//This class is an aspect.
@Aspect
@Component
public class Logger {
/*
	@Pointcut("within(@org.springframework.stereotype.Component com.caveofprogramming.spring..*)")
	public void somePointcut() {	
	}
	
	@Before("somePointcut()")
	public void somePointcutDemo() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}
*/
	/*
	@Pointcut("@target(org.springframework.stereotype.Component)")
	public void somePointcut() {	
	}
	
	@Before("somePointcut()")
	public void somePointcutDemo() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}
	*/

	/*
	@Pointcut("@annotation(java.lang.Deprecated)")
	public void somePointcut() {	
	}
	
	@Before("somePointcut()")
	public void somePointcutDemo() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}	
	 */
	
	//@Pointcut("@args(org.springframework.stereotype.Component)")
	@Pointcut("@args(java.lang.Deprecated)")
	public void somePointcut() {	
	}
	
	@Before("somePointcut()")
	public void somePointcutDemo() {
		System.out.println( "***************** BEFORE DEMO *********************");
	}	
}
