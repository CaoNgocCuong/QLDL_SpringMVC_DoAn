/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.util.Properties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Admin
 */
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.da.repository",
    "com.da.service"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
    @Autowired
    private UserDetailsService userDetailsService;
    
    @Bean
    public Cloudinary cloudinary() {
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(
        "cloud_name", "khangou",
        "api_key", "726139423184338",
        "api_secret", "nH7U5g_RAngB4m5HWZloa6qzT6k",
        "secure", true));
        return c;
    }   
    
    @Bean
    public JavaMailSender getMailSender(){
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("ngoccuong01032000@gmail.com");
        mailSender.setPassword("caongoccuong");
        
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", "true");
        javaMailProperties.put("mail.smtp.auth", "true");
        javaMailProperties.put("mail.transport.protocol", "smtp");
        javaMailProperties.put("mail.debug", "true");
        
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password");
        http.formLogin().defaultSuccessUrl("/").failureUrl("/login?error");
        http.logout().logoutSuccessUrl("/login");
        
        http.exceptionHandling().accessDeniedPage("/login?accessDenied");
        
        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/tours/**/booking").authenticated();
        
        http.csrf().disable();
    }
    
    
}
