package com.wiggin.springboot.demo.main;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;



/**
 * copyright 2015-2020
 *
 * @author wiggin
 * @date 2017/9/26 22:40
 * @Description: 启动类
 */
@SpringBootApplication
@MapperScan(basePackages = "com.wiggin.springboot.demo.dao")
@ComponentScan("com.wiggin.springboot.demo.*")
public class Main {
    public static void main(String[] args) {
        SpringApplication.run(Main.class);
    }
}
