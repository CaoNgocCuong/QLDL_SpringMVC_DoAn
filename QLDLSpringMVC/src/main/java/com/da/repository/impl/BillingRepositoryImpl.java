/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.repository.impl;

import com.da.pojos.Billing;
import com.da.pojos.Booking;
import com.da.repository.BillingRepository;
import com.da.service.BookingService;
import com.da.service.ToursService;
import java.math.BigDecimal;
import java.util.Date;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
public class BillingRepositoryImpl implements BillingRepository{

    @Autowired
    private ToursService tourService;
    @Autowired
    private BookingService bookingService;
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addBill(int bookingId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Booking booking = this.bookingService.getBookingById(bookingId);
           
            Billing bill = new Billing();
            BigDecimal adultPrice = this.tourService.getTourById(booking.getTour().getId()).getAdultsPrice();
            BigDecimal childPrice = this.tourService.getTourById(booking.getTour().getId()).getChildrenPrice();
            BigDecimal adults = new BigDecimal(booking.getAdults());
            BigDecimal children = new BigDecimal(booking.getChildren());

            bill.setId(booking.getId());
            bill.setBooking(booking);
            bill.setCreatedDate(new Date());
            bill.setMoney(adultPrice.multiply(adults).add(childPrice.multiply(children)));
            session.save(bill);
            
            return true;
        } catch(HibernateException e) {
            System.err.println("==Add bill error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
    
}
