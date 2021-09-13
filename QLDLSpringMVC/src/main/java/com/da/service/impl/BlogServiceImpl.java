/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.pojos.Post;
import com.da.repository.BlogRepository;
import com.da.service.BlogService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class BlogServiceImpl implements BlogService{

    @Autowired
    private BlogRepository blogRepository;
    
    @Override
    public List<Post> getPosts(String title, int page) {
        
        return this.blogRepository.getPosts(title, page);
    }

    @Override
    public long countPosts() {
        return this.blogRepository.countPosts();
    }
    
}
