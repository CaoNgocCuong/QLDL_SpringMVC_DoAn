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
import com.da.repository.LikeCommentPostRepository;
import com.da.repository.UserRepository;
import com.da.service.LikeCommentPostService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author CaoNgocCuong
 */
@Service
public class LikeCommentPostServiceImpl implements LikeCommentPostService {

    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private BlogRepository blogRepository;
    
    @Autowired
    private LikeCommentPostRepository likeCommentPostRepository;
    
    @Override
    public Comment addCommentPost(String content, int postId, String username) {
        
        Post p = this.blogRepository.getPostById(postId);
        User u = this.userRepository.getUsersByUsername(username);
        
        Comment c = new Comment();
        c.setComment(content);
        c.setPost(p);
        c.setUser(u);
        c.setDate(new Date());
        
        return this.likeCommentPostRepository.addCommentPost(c);
    }

    @Override
    public List<Comment> getCommentsPost(int postId, int page) {
        return this.likeCommentPostRepository.getCommentsPost(postId, page);
    }

    @Override
    public long countCommentsPost(int blogId) {
        return this.likeCommentPostRepository.countCommentsPost(blogId);
    }
    
}
