package io.codefresh.gradleexample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class GradleExampleApplication {

	public static void main(String[] args) {
		System.out.println("testing hello hello");
		SpringApplication.run(GradleExampleApplication.class, args);
	}

}
