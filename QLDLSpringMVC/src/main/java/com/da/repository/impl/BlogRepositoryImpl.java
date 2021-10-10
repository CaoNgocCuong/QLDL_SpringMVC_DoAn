/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Post;
import com.da.pojos.Tag;
import com.da.repository.BlogRepository;
import java.util.List;
import java.util.Set;
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
public class BlogRepositoryImpl implements BlogRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Post> getPosts(String title, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        query = query.select(root);
        
        if(!title.isEmpty() && title != null){
            Predicate p = builder.like(root.get("title").as(String.class), String.format("%%%s%%", title));
            Predicate p2 = builder.like(root.get("category").get("name").as(String.class), String.format("%%%s%%", title));
            Predicate p3 = builder.like(root.<Set<Tag>>join("tags").get("name"), String.format("%%%s%%", title));
            query = query.where(builder.or(p, p2, p3));
        }
        
        Query q = session.createQuery(query);
        
        int max = 5;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        
        return q.getResultList();
    }

    @Override
    public long countPosts() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("SELECT COUNT(p.id) FROM Post p");
        
        return Long.parseLong(query.getSingleResult().toString());
    }

    @Override
    public List<Post> getPosts(String title) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        query = query.select(root);
        
        if(!title.isEmpty() && title != null){
            Predicate p = builder.like(root.get("title").as(String.class), String.format("%%%s%%", title));
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }
    
    @Override
    public List<Post> getPosts() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        
        query = query.select(root);
        
        query.orderBy(builder.desc(root.get("date")));
        
        Query q = s.createQuery(query);
        
        q.setMaxResults(3);
        
        return q.getResultList();
    }

    @Override
    public boolean addPost(Post post) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(post);
            return true;
        } catch (HibernateException e) {
            System.err.println("==Add post error==" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Post getPostById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(Post.class, id);
    }



    
}
