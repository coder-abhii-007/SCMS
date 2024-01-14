package com.studentCourseRegSys.SCRS;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ScrsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ScrsApplication.class, args);
		System.out.println("Server start");
	}

}
