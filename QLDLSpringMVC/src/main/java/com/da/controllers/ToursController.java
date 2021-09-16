/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Tour;
import com.da.pojos.TourDetail;
import com.da.service.ToursService;
import com.da.validator.WebAppValidator;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class ToursController {
    @Autowired
    private ToursService toursService;
    
    
    @GetMapping("/tours")
    public String toursView(Model model, @RequestParam(value = "tourName", required = false, defaultValue = "") String tourName,
            @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("tours", this.toursService.getTours(tourName, page));
        model.addAttribute("counter", this.toursService.countTours());
 
        return "tours";
    }
    
    @GetMapping("/admin/tour_management")
    public String tourManagementView(Model model, @RequestParam(value = "tourName", required = false, defaultValue = "") String tourName){
        model.addAttribute("tours", this.toursService.getTours(tourName));
        return "tour_management";
    }
    
    @PostMapping("/admin/tour_management")
    public String addTour(Model model, @ModelAttribute(value="tour") @Valid Tour tour, BindingResult result){
        String errMsg ="";
        if(!result.hasErrors()){
            
            if(this.toursService.addTour(tour)){
                errMsg = "Thêm thành công!";
                return "redirect:/admin/tour_management";
            }                   
            else
                errMsg = "Đã có lỗi xảy ra!!!";    
        }
        else
            errMsg = "Đã có lỗi xảy ra!";
        model.addAttribute("errMsg", errMsg);
        return "tour_management";
    }
    
    @PostMapping("/admin/tour_management1")
    public String addTourDetail(Model model, @ModelAttribute(value="tourDetail") @Valid TourDetail tourDetail, BindingResult result){
        String errMsg ="";
        if(!result.hasErrors()){
            
            if(this.toursService.addTourDetail(tourDetail)){
                errMsg = "Thêm thành công!";
                return "redirect:/admin/tour_management";
            }                   
            else
                errMsg = "Đã có lỗi xảy ra!!!";    
        }
        else
            errMsg = "Đã có lỗi xảy ra!";
        model.addAttribute("errMsg", errMsg);
        return "tour_management";
    }
}
