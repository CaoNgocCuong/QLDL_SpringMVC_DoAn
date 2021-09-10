/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.User;
import com.da.service.UserService;
import com.da.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private WebAppValidator userValidator;
    
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.setValidator(userValidator);
    }
    
    @GetMapping("/register")
    public String registerView(Model model) {
      model.addAttribute("user", new User());
      return "register";
    }
    
    @PostMapping("/register")
    public String add(Model model, @ModelAttribute(value="user") @Valid User user, BindingResult result) {
        String errMsg ="";
        if(!result.hasErrors()){
            if(user.getPassword().equals(user.getConfirmPassword())){
                if(this.userService.addUser(user))
                    return "redirect:/login";
                else
                    errMsg = "Đã có lỗi xảy ra!!!";
            }
            else
                errMsg = "Mật khẩu không khớp!";      
        }
        else
            errMsg = "Đã có lỗi xảy ra!";
        model.addAttribute("errMsg", errMsg);
        return "register";
    }
    
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    
}
