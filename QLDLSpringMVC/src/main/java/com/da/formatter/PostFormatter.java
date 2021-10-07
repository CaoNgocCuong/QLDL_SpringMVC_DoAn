/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.formatter;

import com.da.pojos.Post;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author CaoNgocCuong
 */
public class PostFormatter implements Formatter<Post>{

    @Override
    public String print(Post object, Locale locale) {
        return String.valueOf(object.getId());
    }

    @Override
    public Post parse(String postId, Locale locale) throws ParseException {
        Post p = new Post();
        p.setId(Integer.parseInt(postId));
        
        return p;
    }
    
}
