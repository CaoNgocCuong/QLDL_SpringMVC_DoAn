/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service;

import com.da.pojos.Post;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface BlogService {
    List<Post> getPosts(String title, int page);
    List<Post> getPosts(String title);
    boolean addPost(Post post);
    long countPosts();
}
