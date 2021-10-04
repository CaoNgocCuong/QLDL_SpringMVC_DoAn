/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Comment;
import com.da.service.LikeCommentPostService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author CaoNgocCuong
 */
@RestController
public class ApiLikeCommentPostController {
    
    @Autowired
    private LikeCommentPostService likeCommentPostService;
    
    @PostMapping(path = "/api/add-commentPost", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Comment> addCommentPost(@RequestBody Map<String, String> params) {
        try {
            int postId = Integer.parseInt(params.get("postId"));
            String content = params.get("content");
            String username = params.get("username");
            
            Comment c = this.likeCommentPostService.addCommentPost(content, postId, username);
            
            return new ResponseEntity<Comment>(c, HttpStatus.CREATED);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
