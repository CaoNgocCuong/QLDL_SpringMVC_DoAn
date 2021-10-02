/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Post;
import com.da.service.BlogService;
import com.da.service.CategoryService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class BlogController {
    @Autowired
    private BlogService blogService;
    
    @Autowired
    private CategoryService categoryService;
    
    @GetMapping("/blog")
    public String blogView(Model model, @RequestParam(value = "title", required = false, defaultValue = "") String title,
            @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("posts", this.blogService.getPosts(title, page));
        model.addAttribute("counter", this.blogService.countPosts());
        model.addAttribute("categories", this.categoryService.getCategories());
        
        return "blog";
    }
    
    @GetMapping("/admin/blog-management")
    public String blogManagementView(Model model, @RequestParam(value = "blogTitle", required = false, defaultValue = "") String blogTitle) {
        model.addAttribute("posts", this.blogService.getPosts(blogTitle));
        model.addAttribute("cates", this.categoryService.getCategories());
        return "blog-management";
    }
    
    @PostMapping("/admin/blog-management")
    public String addPost(Model model, @ModelAttribute(value="post") @Valid Post post, BindingResult result){
        String errMsg ="";
//        if(!result.hasErrors()){
            if(this.blogService.addPost(post) == true)
                return "redirect:/admin/blog-management";
            else
                errMsg = "Lỗi! Thêm thất bại!";     
//        }
//        else
//            errMsg = "Lỗi! Thông tin nhập không hợp lệ!";
        model.addAttribute("errMsg", errMsg);
        return "blog-management";
    }
}
