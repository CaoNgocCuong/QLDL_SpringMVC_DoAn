/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Booking;
import com.da.service.BookingService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author CaoNgocCuong
 */

@Controller
public class BookingTourController {
    @Autowired
    private BookingService bookingService;
    
    //============ USER ==============
    
    @PostMapping("/tours/{tourId}/booking")
    public String addBooking(Model model, @ModelAttribute(value="booking") @Valid Booking booking, BindingResult result){
        String errMsg ="";
        if(!result.hasErrors()){
            if(this.bookingService.addBooking(booking) == true)
                return "redirect:/tours/{tourId}/booking";
            else
                errMsg = "Đã có lỗi xảy ra, không đặt tour được!!!";    
        }
        else
            errMsg = "Vui lòng kiểm tra lại thông tin đặt tour!";
        model.addAttribute("booking", this.bookingService.addBooking(booking));
        return "tour_bookings";
    }
    
    //============= ADMIN ===============
    
    @GetMapping("/admin/bookingtour-management/")
    public String bookingTour(Model model, @RequestParam(value = "bookingId", required = false, defaultValue = "0") int bookingId) {
        model.addAttribute("bookings", this.bookingService.getBookings(bookingId));
        return "bookingtour-management";
    }
    
    
    @GetMapping("/admin/cancel-ticket/")
    public String cancelTicket() {
        return "cancel-ticket-management";
    }
}
