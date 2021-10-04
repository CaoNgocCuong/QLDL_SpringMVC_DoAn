/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service;

import com.da.pojos.Comment;

/**
 *
 * @author CaoNgocCuong
 */
public interface LikeCommentPostService {
    Comment addCommentPost(String content, int postId, String username);
}
