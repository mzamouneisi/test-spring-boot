
package com.mz.test_spring_boot;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

// import jakarta.annotation.PostConstruct;

@SpringBootApplication
public class App {

	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
	}

	@PostConstruct
	public void init() throws Exception {
	}

	static AbstractApplicationContext context;

	public static AbstractApplicationContext getContext() {
		if (context == null)
			context = new AnnotationConfigApplicationContext(App.class);

		return context;
	}

	public static <T> T getBean(Class<T> klass) {
		return (T) getContext().getBean(klass);
	}

}
