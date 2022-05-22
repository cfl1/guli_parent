package com.chen.eduservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author chenfl
 * @create 2021-01-22-15:17
 */
@SpringBootApplication
@ComponentScan(basePackages = {"com.chen"})
public class EduApplication {
    public static void main(String[] args) {
        SpringApplication.run(EduApplication.class, args);
    }
}
