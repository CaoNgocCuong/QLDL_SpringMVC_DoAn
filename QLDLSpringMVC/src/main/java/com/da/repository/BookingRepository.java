/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.da.repository;

import com.da.pojos.Booking;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface BookingRepository {
    boolean addBooking(Booking booking);
    List<Booking> getBookings(int bookingId);
}
