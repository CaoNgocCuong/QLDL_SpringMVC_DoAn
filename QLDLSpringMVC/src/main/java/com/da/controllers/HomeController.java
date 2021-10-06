/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.User;
import com.da.service.BlogService;
import com.da.service.CategoryService;
import com.da.service.ToursService;
import com.da.service.UserService;
import java.security.Principal;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author CaoNgocCuong
 */

@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ToursService toursService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private BlogService blogService;
    
    @ModelAttribute
    public void commonAttr(Model model, @RequestParam (value = "tourName", required = false) String tourName) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        
        String username = authentication.getName();
        
        model.addAttribute("counterPostsInCate", this.categoryService.countPostInCate());
        model.addAttribute("postsDateDes", this.blogService.getPosts());
        model.addAttribute("user", this.userService.getUsers(username));
        model.addAttribute("counterKw", this.toursService.countToursByKw(tourName));
    }
    
    @RequestMapping("/")
    public String index(Model model, @RequestParam (value="tourName", required=false, defaultValue = "") String tourName, 
            @RequestParam (required=false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));

        model.addAttribute("tours", this.toursService.getTours(tourName, page));
        model.addAttribute("counter", this.toursService.countTours());
        model.addAttribute("categories", this.categoryService.getCategories());
        return "index";
    }

}
