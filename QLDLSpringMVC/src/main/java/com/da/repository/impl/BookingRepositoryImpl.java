/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.repository.impl;

import com.da.pojos.Booking;
import com.da.repository.BookingRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class BookingRepositoryImpl implements BookingRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addBooking(Booking booking) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(booking);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add booking error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Booking> getBookings(int bookingId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Booking> query = builder.createQuery(Booking.class);
        Root root = query.from(Booking.class);
        query = query.select(root);
        
        if(bookingId != 0){
            Predicate p = builder.equal(root.get("id").as(Integer.class), bookingId);
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }
    
}
