package com.caveofprogramming.spring.aop;


// This class is an aspect.
public class Logger {

	// Method is an "advice" to snap().  Run this before running snap.
	public void aboutToTakePhoto() {
		System.out.println( "About to take photo...");
	}
}
