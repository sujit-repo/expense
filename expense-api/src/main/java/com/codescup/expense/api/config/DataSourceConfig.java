package com.codescup.expense.api.config;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataSourceConfig {

	@Bean
	@Primary
	public DataSource dataSource() throws SQLException {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setUrl("jdbc:mysql://localhost:3306/expense");
		ds.setUsername("root");
		ds.setPassword("admin");
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		return ds;
	}
}
