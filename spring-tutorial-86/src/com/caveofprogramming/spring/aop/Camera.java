package com.caveofprogramming.spring.aop;

import org.springframework.stereotype.Component;

@Component("camera")
public class Camera implements PhotoSnapper, Machine, ICamera {
	
	public Camera() {
		System.out.println("Hello for Camera() constructor." );
	}
	
	/* (non-Javadoc)
	 * @see com.caveofprogramming.spring.aop.ICamera#snap()
	 */
	@Override
	@Deprecated
	public void snap() {
		System.out.println("Snap");
		
	}
	
	/* (non-Javadoc)
	 * @see com.caveofprogramming.spring.aop.ICamera#snap(int)
	 */
	@Override
	public void snap(int exposure) {
		System.out.println("Snap! Exposure " + exposure);
	}
	
	@Override
	public void snap(double exposure) {
		System.out.println("Snap! Exposure " + exposure);
	}
	
	
	@Override
	public void snap(int exposure, double exp2) {
		System.out.println("Snap! Exposure " + exposure + " " + exp2);
	}
	
	/* (non-Javadoc)
	 * @see com.caveofprogramming.spring.aop.ICamera#snap(java.lang.String)
	 */
	@Override
	public String snap(String name) {
		System.out.println("Snap! Exposure " + name);
		return name;
	}
	
	/* (non-Javadoc)
	 * @see com.caveofprogramming.spring.aop.ICamera#snapNighttime()
	 */
	@Override
	public void snapNighttime() {
		System.out.println("Snap! Night mode ");
		
		
	}
	
	public void snapCar(@Deprecated Car car) {
		System.out.println( "Snapping car...");
	}
	
}
