package com.caveofprogramming.spring.aop;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.caveofprogramming.spring.camera.accessories.Lens;

public class App {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"com/caveofprogramming/spring/aop/beans.xml");

		Object obj = context.getBean("camera");
		
		
		System.out.println( "Class of camera bean: " + obj.getClass());
		
		System.out.println( "Is instance of Camera       : " + (obj instanceof Camera) );
		System.out.println( "Is instance of PhotoSnapper : " + (obj instanceof PhotoSnapper) );
		System.out.println( "Is instance of Machine      : " + (obj instanceof Machine) );
		System.out.println( "Is instance of Object       : " + (obj instanceof Object) );
		System.out.println( "Is instance of Context      : " + (obj instanceof ClassPathXmlApplicationContext) );
		System.out.println( "Is instance of ICamera      : " + (obj instanceof ICamera) );
		
		ICamera camera = (ICamera) context.getBean("camera");
		Lens lens = (Lens) context.getBean("lens");

		try {
			camera.snap();
		} catch (Exception e) {
			System.out.println( "Caught exception " + e.getMessage() );
			e.printStackTrace();
		}
		

		context.close();
	}
}
