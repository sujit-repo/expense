package com.codescup.expense.api.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import com.sun.glass.ui.Application;

@SpringBootApplication
@ComponentScan(basePackages= {"com.codescup.expense.api", "com.codescup.expense.app"})
@EntityScan(basePackages= {"com.codescup.expense.app.entity"})
public class ExpenseApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(ExpenseApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ExpenseApplication.class);
	}
}
