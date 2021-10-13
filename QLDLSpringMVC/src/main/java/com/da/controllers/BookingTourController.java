/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author CaoNgocCuong
 */

@Controller
public class BookingTourController {
    
    @GetMapping("/admin/bookingtour-management/")
    public String bookingTour() {
        return "bookingtour-management";
    }
    
    
    @GetMapping("/admin/cancel-ticket/")
    public String cancelTicket() {
        return "cancel-ticket-management";
    }
}
