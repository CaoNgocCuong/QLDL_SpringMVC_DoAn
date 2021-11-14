/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Billing;
import com.da.pojos.Booking;
import com.da.pojos.Tour;
import com.da.repository.StatsRepository;
import java.time.Year;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author CaoNgocCuong
 */
@Repository
@Transactional
public class StatsRepositoryImpl implements StatsRepository {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> tourStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootTour = query.from(Tour.class);
        Root rootBooking = query.from(Booking.class);
        Root rootBilling = query.from(Billing.class);
        
        List<Predicate> predicaties = new ArrayList<>();
        predicaties.add(builder.equal(rootBooking.get("tour"), rootTour.get("id")));
        predicaties.add(builder.equal(rootBooking.get("billing"), rootBilling.get("booking")));
        
        query.multiselect(rootTour.get("id"), rootTour.get("name"),
                builder.sum(builder.sum(builder.prod(rootTour.get("adultsPrice"), rootBooking.get("adults")), builder.prod(rootTour.get("childrenPrice"), rootBooking.get("children")))));
        
        if (kw != null && !kw.isEmpty()) {
            predicaties.add(builder.like(rootTour.get("name"), String.format("%%%s%%", kw)));
        }
        
        if (fromDate != null) {
            predicaties.add(builder.greaterThanOrEqualTo(rootBilling.get("createdDate"), fromDate));
        }
        
        if (toDate != null) {
            predicaties.add(builder.lessThanOrEqualTo(rootBilling.get("createdDate"), toDate));
        }
        
        query.where(predicaties.toArray(new Predicate[] {}));
        
        query.groupBy(rootTour.get("id"));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public List<Object[]> tourMonthStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootTour = query.from(Tour.class);
        Root rootBooking = query.from(Booking.class);
        Root rootBilling = query.from(Billing.class);
        
        List<Predicate> predicaties = new ArrayList<>();
        predicaties.add(builder.equal(rootBooking.get("tour"), rootTour.get("id")));
        predicaties.add(builder.equal(rootBooking.get("billing"), rootBilling.get("booking")));
        
        query.multiselect(builder.function("MONTH", Integer.class, rootBilling.get("createdDate")),
                builder.function("YEAR", Integer.class, rootBilling.get("createdDate")),
                builder.sum(builder.sum(builder.prod(rootTour.get("adultsPrice"), rootBooking.get("adults")), builder.prod(rootTour.get("childrenPrice"), rootBooking.get("children")))));
        
        if (kw != null && !kw.isEmpty()) {
            predicaties.add(builder.like(rootTour.get("name"), String.format("%%%s%%", kw)));
        }
        
        if (fromDate != null) {
            predicaties.add(builder.greaterThanOrEqualTo(rootBilling.get("createdDate"), fromDate));
        }
        
        if (toDate != null) {
            predicaties.add(builder.lessThanOrEqualTo(rootBilling.get("createdDate"), toDate));
        }
        
        query.where(predicaties.toArray(new Predicate[] {}));
        
        query.groupBy(builder.function("MONTH", Integer.class, rootBilling.get("createdDate")),
                builder.function("YEAR", Integer.class, rootBilling.get("createdDate")));
        
        query.orderBy(builder.asc(builder.function("YEAR", Integer.class, rootBilling.get("createdDate"))), builder.asc(builder.function("MONTH", Integer.class, rootBilling.get("createdDate"))));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public List<Object[]> tourYearStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootTour = query.from(Tour.class);
        Root rootBooking = query.from(Booking.class);
        Root rootBilling = query.from(Billing.class);
        
        List<Predicate> predicaties = new ArrayList<>();
        predicaties.add(builder.equal(rootBooking.get("tour"), rootTour.get("id")));
        predicaties.add(builder.equal(rootBooking.get("billing"), rootBilling.get("booking")));
        
        query.multiselect(builder.function("YEAR", Integer.class, rootBilling.get("createdDate")),
                builder.sum(builder.sum(builder.prod(rootTour.get("adultsPrice"), rootBooking.get("adults")), builder.prod(rootTour.get("childrenPrice"), rootBooking.get("children")))));
        
        if (kw != null && !kw.isEmpty()) {
            predicaties.add(builder.like(rootTour.get("name"), String.format("%%%s%%", kw)));
        }
        
        if (fromDate != null) {
            predicaties.add(builder.greaterThanOrEqualTo(rootBilling.get("createdDate"), fromDate));
        }
        
        if (toDate != null) {
            predicaties.add(builder.lessThanOrEqualTo(rootBilling.get("createdDate"), toDate));
        }
        
        query.where(predicaties.toArray(new Predicate[] {}));
        
        query.groupBy(builder.function("YEAR", Integer.class, rootBilling.get("createdDate")));
        query.orderBy(builder.asc(builder.function("YEAR", Integer.class, rootBilling.get("createdDate"))));
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public List<Object[]> tourStatsQuarter(int year) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("SELECT quarter(t.endDate), "
                + "CASE WHEN SUM((t.childrenPrice * b.children) + (t.adultsPrice * adults)) IS NULL"
                + "THEN 0 ELSE SUM((t.childrenPrice * b.children) + (t.adultsPrice * adults)) END,"
                + "YEAR(t.endDate) FROM Tour t "
                + "LEFT OUTER JOIN Booking b "
                + "ON t.id = b.tour "
                + "WHERE YEAR(t.endDate) = :year "
                + "GROUP BY quarter(t.endDate)"
                + "ORDER BY quarter(t.endDate)");
        
        q.setParameter("year", year);
        return q.getResultList();
    }
    
}
