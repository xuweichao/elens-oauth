package com.elens.oauth.elensoauth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;

@ComponentScan("com.elens.oauth")
@SpringBootApplication
public class ElensOauthApplication {

	public static void main(String[] args) {
        ApplicationContext app=SpringApplication.run(ElensOauthApplication.class, args);
//        PasswordEncoder encoder=app.getBean(PasswordEncoder.class);
//		String pass=encoder.encode("xuweichao").trim();
//		System.out.println(pass);
	}
}
