/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository;

import com.da.pojos.Comment;
import java.util.List;

/**
 *
 * @author CaoNgocCuong
 */
public interface LikeCommentPostRepository {
    Comment addCommentPost(Comment c);
    List<Comment> getCommentsPost(int postId, int page);
    long countCommentsPost(int blogId);
}
