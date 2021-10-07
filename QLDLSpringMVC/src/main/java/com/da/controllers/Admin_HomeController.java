/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
public class Admin_HomeController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("/admin")
    public String adminView(Model model, @RequestParam (value = "kw", required = false, defaultValue = "") String kw) {
        
        model.addAttribute("users", this.userService.getUsers(kw));
        return "admin";
    }
}
