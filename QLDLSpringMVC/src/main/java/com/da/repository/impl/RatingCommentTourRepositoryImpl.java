/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Rating;
import com.da.pojos.Tour;
import com.da.repository.RatingCommentTourRepository;
import com.da.service.ToursService;
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
 * @author CaoNgocCuong
 */
@Repository
@Transactional
public class RatingCommentTourRepositoryImpl implements RatingCommentTourRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private ToursService toursService;
    
    @Override
    public Rating addCommentTour(Rating r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            session.save(r);
            
            return r;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public long counterCommentTour(int tourId) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Tour t = this.toursService.getTourById(tourId);
        
        Query q = s.createQuery("SELECT count(r.tour) FROM Rating r WHERE r.tour=:id");
        q.setParameter("id", t);
        
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public List<Rating> getCommentsTour(int tourId, int page) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery<Rating> query = builder.createQuery(Rating.class);
        Root<Rating> rootRating = query.from(Rating.class);
        
        query = query.select(rootRating);
        
        Predicate p = builder.equal(rootRating.get("tour").get("id").as(Integer.class), tourId);
        
        query = query.where(p);
        
        Query q = s.createQuery(query);
        
        int max = 7;
        
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }
    
}
