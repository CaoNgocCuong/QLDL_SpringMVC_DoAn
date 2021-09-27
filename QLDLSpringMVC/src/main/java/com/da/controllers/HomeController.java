/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.service.CategoryService;
import com.da.service.ToursService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
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
