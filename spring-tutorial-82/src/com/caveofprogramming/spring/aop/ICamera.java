package com.caveofprogramming.spring.aop;

public interface ICamera {

	void snap();

	void snap(int exposure);

	String snap(String name);

	void snapNighttime();

}