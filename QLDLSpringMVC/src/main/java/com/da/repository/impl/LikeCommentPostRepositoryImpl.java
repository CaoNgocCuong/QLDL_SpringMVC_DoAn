/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository.impl;

import com.da.pojos.Comment;
import com.da.pojos.Post;
import com.da.repository.LikeCommentPostRepository;
import com.da.service.BlogService;
import java.util.List;
import javax.persistence.Parameter;
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
public class LikeCommentPostRepositoryImpl implements LikeCommentPostRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private BlogService blogService;
    
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

    @Override
    public List<Comment> getCommentsPost(int postId, int page) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery query = builder.createQuery(Comment.class);
        Root root = query.from(Comment.class);
        query = query.select(root);
        
        Predicate p = builder.equal(root.get("post").get("id").as(Integer.class), postId);
        
        query.where(p);
        
        Query q = s.createQuery(query);
        
        int max = 7;
        q.setMaxResults(max);
        q.setFirstResult((page -1 ) * max);
        
        return q.getResultList();
    }

    @Override
    public long countCommentsPost(int blogId) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Post p = this.blogService.getPostById(blogId);
        
        Query q = s.createQuery("SELECT count(c.post) FROM Comment c WHERE c.post=:id");
        q.setParameter("id", p);
        
        return Long.parseLong(q.getSingleResult().toString());
   }
    
}
