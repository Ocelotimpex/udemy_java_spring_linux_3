package com.caveofprogramming.spring.aop;

import org.springframework.stereotype.Component;

@Component
public class Camera {
	
	
	public void snap()  throws Exception{
		System.out.println("Snap");
		
		throw new Exception("Bye Bye"); 
	}
	
	public void snap(int exposure) {
		System.out.println("Snap! Exposure " + exposure);
	}
	
	public String snap(String name) {
		System.out.println("Snap! Exposure " + name);
		return name;
	}
	
	public void snapNighttime() {
		System.out.println("Snap! Night mode ");
	}
	
}
