/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.service.impl;

import com.da.pojos.Booking;
import com.da.repository.BookingRepository;
import com.da.service.BookingService;
import com.da.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class BookingServiceImpl implements BookingService{

    @Autowired
    private BookingRepository bookingRepository;
    
    @Autowired
    private UserService userService;
    
    @Override
    public boolean addBooking(Booking booking) {
        booking.setUser(this.userService.getUserById(booking.getUserId()));
        booking.setStatus(Boolean.FALSE);
        return this.bookingRepository.addBooking(booking);
    }

    @Override
    public List<Booking> getBookings(int bookingId) {
        return this.bookingRepository.getBookings(bookingId);
    }
    
}
