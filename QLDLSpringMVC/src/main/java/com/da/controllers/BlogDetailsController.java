/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class BlogDetailsController {
    @GetMapping("/blog/blog_details")
    public String blogDeltailsView() {
      return "blog_details";
    }
}
