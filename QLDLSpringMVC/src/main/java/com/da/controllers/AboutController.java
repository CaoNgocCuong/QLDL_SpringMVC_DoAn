/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.User;
import com.da.service.BlogService;
import com.da.service.ToursService;
import com.da.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Admin
 */
@Controller
public class AboutController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private ToursService toursService;
    
    @Autowired
    private BlogService blogService;
    
    @GetMapping("/about")
    public String aboutView(Model model) {
      
        model.addAttribute("countUserRole", this.userService.countUserWithRole(User.ROLE_USER));
        model.addAttribute("countTour", this.toursService.countTours());
        model.addAttribute("countBlog", this.blogService.countPosts());
        return "about";
    }
}
