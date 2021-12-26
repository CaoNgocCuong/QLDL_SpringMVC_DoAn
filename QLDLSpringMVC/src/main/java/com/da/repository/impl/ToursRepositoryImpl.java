/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Tour;
import com.da.pojos.TourDetail;
import com.da.pojos.TourPhoto;
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
        
        int max = 9;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }

    @Override
    public long countTours() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("SELECT COUNT(t.id) FROM Tour t");
        
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
    public Tour getTourById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Tour.class, id);
    } 

    @Override
    public boolean addTour(Tour tour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            if(tour.getId() > 0)
                session.update(tour);
            else
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
            if(tourDetail.getId() > 0)
                session.update(tourDetail);
            else
                session.save(tourDetail);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add tour error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addTourPhoto(TourPhoto tourPhoto) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            if(tourPhoto.getId() > 0)
                session.update(tourPhoto);
            else
                session.save(tourPhoto);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add tour error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public long countToursByKw(String kw) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        
        Query query = s.createQuery("SELECT COUNT(*) FROM Tour t WHERE t.name LIKE :kw");
        
        query.setParameter("kw", "%" + kw + "%");
        
        return Long.parseLong(query.getSingleResult().toString());
    }

    @Override
    public List<Object> getTourWithComment(String tourName, int page) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        
        if (!tourName.isEmpty() && tourName != null) {
            Query query = s.createQuery("SELECT t.id, t.name, t.tourType, t.photo,"
                    + " t.tourDays, t.tourNights, t.adultsPrice, t.childrenPrice,"
                    + " t.startDate, t.endDate, t.active, t.introduction, t.service,"
                    + " t.note, t.country, count(r.id)"
                    + " FROM Rating r RIGHT OUTER JOIN Tour t"
                    + " ON r.tour = t.id"
                    + " WHERE t.name LIKE :tourName AND t.active = 1"
                    + " GROUP BY t.name");
            
            query.setParameter("tourName", "%" + tourName + "%");
            
            int max = 9;
        
            query.setMaxResults(max);
            query.setFirstResult((page - 1) * max);

            return query.getResultList();
        }
        
        return null;
    }

    @Override
    public List<Tour> getTours(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query = query.select(root);
        
        if(id != 0){
            Predicate p = builder.equal(root.get("id").as(Integer.class), id);
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public boolean deletePhoto(int id) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            TourPhoto t = session.get(TourPhoto.class, id);
            session.delete(t);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    public boolean deleteTourDetail(int id) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            TourDetail t = session.get(TourDetail.class, id);
            session.delete(t);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    public boolean deleteTour(int id) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            Tour t = session.get(Tour.class, id);
            session.delete(t);
            
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }

    @Override
    public List<Tour> getActiveTour(String tourName, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query = query.select(root);
        Predicate a = builder.equal(root.get("active").as(Integer.class), 1);
        query = query.where(a);
        if(!tourName.isEmpty() && tourName != null){
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", tourName));
            
            query = query.where(p);
            Predicate ac = builder.equal(root.get("active").as(Integer.class), 1);
            query = query.where(ac);
        }
        
        Query q = session.createQuery(query);
        
        int max = 9;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }

}
