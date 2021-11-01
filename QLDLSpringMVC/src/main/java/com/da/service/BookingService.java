/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.da.service;

import com.da.pojos.Booking;
import com.da.pojos.Cancellation;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface BookingService {
    boolean addBooking(Booking booking);
    List<Booking> getBookings(int bookingId);
    Booking getBookingById(int bookingId);
    boolean cancelBooking(Cancellation can);
}
