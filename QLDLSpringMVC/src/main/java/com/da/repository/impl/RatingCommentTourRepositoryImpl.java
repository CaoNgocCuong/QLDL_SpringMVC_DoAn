/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Rating;
import com.da.repository.RatingCommentTourRepository;
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
    
}
