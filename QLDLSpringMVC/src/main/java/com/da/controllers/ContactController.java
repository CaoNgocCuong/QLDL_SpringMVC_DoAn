/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Admin
 */
@Controller
public class ContactController {
//    @Autowired
//    private MailSender mailSender;
    
    @GetMapping("/contact")
    public String contactView() {
        
//        sendMail("vukhang297@gmail.com", "khangbum970@gmail.com", "Hello", "Xin chào!");
        
        return "contact";
    }
    
//    public void sendMail(String from, String to, String subject, String content){
//        SimpleMailMessage mailMessage = new SimpleMailMessage();
//        mailMessage.setFrom(from);
//        mailMessage.setTo(to);
//        mailMessage.setSubject(subject);
//        mailMessage.setText(content);
//        
//        mailSender.send(mailMessage);
//    }
}
