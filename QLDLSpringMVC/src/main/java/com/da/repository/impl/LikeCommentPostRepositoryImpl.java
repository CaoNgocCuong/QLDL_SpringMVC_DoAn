/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Comment;
import com.da.repository.LikeCommentPostRepository;
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
public class LikeCommentPostRepositoryImpl implements LikeCommentPostRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public Comment addCommentPost(Comment c) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        
        try {
            s.save(c);
            
            return c;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }
    
}
