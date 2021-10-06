/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Category;
import com.da.repository.CategoryRepository;
import java.util.List;
import javax.persistence.Query;
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
public class CategoryRepositoryImpl implements CategoryRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    @Transactional
    public List<Category> getCategories() {
        Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Category");
        
        return q.getResultList();
    }

    @Override
    public List<Object> countPostInCate() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        
        Query q = s.createQuery("SELECT c.name, count(p.id) FROM Post p RIGHT OUTER JOIN Category c ON p.category = c.id group by c.name");
        
        return q.getResultList();
    }
    
}
