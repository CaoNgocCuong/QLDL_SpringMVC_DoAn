/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Tour;
import com.da.pojos.TourDetail;
import com.da.pojos.User;
import com.da.repository.ToursRepository;
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
public class ToursRepositoryImpl implements ToursRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Tour> getTours(String tourName, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query = query.select(root);
        
        if(!tourName.isEmpty() && tourName != null){
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", tourName));
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        
        int max = 15;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }

    @Override
    public long countTours() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("SELECT COUNT(*) FROM Tour");
        
        return Long.parseLong(query.getSingleResult().toString());
    }

    @Override
    public List<Tour> getTours(String tourName) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query = query.select(root);
        
        if(!tourName.isEmpty() && tourName != null){
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", tourName));
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public boolean addTour(Tour tour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(tour);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add tour error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addTourDetails(TourDetail tourDetail) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(tourDetail);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add tour error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
    
}
