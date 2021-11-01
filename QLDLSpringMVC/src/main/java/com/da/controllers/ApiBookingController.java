/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.controllers;

import com.da.pojos.Booking;
import com.da.pojos.User;
import com.da.service.BillingService;
import com.da.service.BookingService;
import com.da.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/api")
public class ApiBookingController {
    @Autowired
    private BillingService billingService;
    @Autowired
    private BookingService bookingService;
    @Autowired
    private MailSender mailSender;
    @Autowired
    private UserService userService;
    @PostMapping("/admin/bookingtour-management/{bookingId}")
    @ResponseStatus(HttpStatus.OK)
    public void confirmPayment(@PathVariable(name = "bookingId") int bookingId){
        Booking b = this.bookingService.getBookingById(bookingId);
        b.setStatus(1);
        this.bookingService.addBooking(b);
        this.billingService.addBill(bookingId);
        User u = userService.getUserById(b.getUser().getId());
        sendMail("vukhang297@gmail.com", u.getEmail(), "Travel CK", "Chung toi da xac nhan ban thanh toan thanh cong. "
                + "Travel CK xin chan thanh cam on quy khach " + u.getFullName() + " da tin tuong su dung dich vu cua chung toi!"
                + "\nMa booking cua ban la: " + String.valueOf(bookingId)
                + "\nSo luong nguoi lon: " + String.valueOf(b.getAdults()) + "\nSo luong tre em: " + String.valueOf(b.getChildren()));
    }
    
    public void sendMail(String from, String to, String subject, String content){
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(content);
        
        mailSender.send(mailMessage);
    }
}
