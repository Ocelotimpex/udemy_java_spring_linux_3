package com.caveofprogramming.spring.aop;

public interface ICamera {

	void snap();

	void snap(int exposure);

	String snap(String name);

	void snapNighttime();

	void snapCar(Car car);

	void snap(double exposure);

	void snap(int exposure, double exp2);

}