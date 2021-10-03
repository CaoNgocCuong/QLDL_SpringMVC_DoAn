/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.service.BlogService;
import com.da.service.CategoryService;
import com.da.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class BlogDetailsController {
    
    @Autowired
    private BlogService blogService;

    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private TagService tagService;
    
    @GetMapping("/blogs/{blogId}")
    public String blogDetail(Model model, @PathVariable(value = "blogId") int blogId) {
        model.addAttribute("blog", this.blogService.getPostById(blogId));
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("tags", this.tagService.getTags());
        return "blog-details";
    }
}
