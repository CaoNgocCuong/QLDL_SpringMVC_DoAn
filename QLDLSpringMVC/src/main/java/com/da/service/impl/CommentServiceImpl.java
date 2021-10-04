/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.pojos.Comment;
import com.da.pojos.Post;
import com.da.pojos.User;
import com.da.repository.BlogRepository;
import com.da.repository.CommentRepository;
import com.da.repository.UserRepository;
import com.da.service.CommentService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author CaoNgocCuong
 */
@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private BlogRepository blogRepository;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private CommentRepository commentRepository;
    
    @Override
    public Comment addComment(String content, int postId) {
        Post p = this.blogRepository.getPostById(postId);
        User u = this.userRepository.getUserById(1);
        
        try {
            Comment c = new Comment();
            c.setPost(p);
            c.setUser(u);
            c.setContent(content);
            c.setDate(new Date());
            return this.commentRepository.addComment(c);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
            
        return null;
    }
    
}
