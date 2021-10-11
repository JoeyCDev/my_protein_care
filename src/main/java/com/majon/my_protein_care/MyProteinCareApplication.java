package com.majon.my_protein_care;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication

public class MyProteinCareApplication {
	public static void main(String[] args) {
		SpringApplication.run(MyProteinCareApplication.class, args);
	}

}
