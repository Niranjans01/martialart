/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nkrs.martialarts01;

import com.nkrs.martialarts01.controller.AdminController;
import java.io.File;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAutoConfiguration
@SpringBootApplication
public class AppInitializer {
    
    public static void main(String[] args) {
        new File(AdminController.uploadDirectory).mkdir();
        SpringApplication.run(AppInitializer.class, args);
    }
    
}
