    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Tour;
import com.da.pojos.TourDetail;
import com.da.pojos.TourPhoto;
import com.da.service.RatingCommentTourService;
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
import org.springframework.web.bind.annotation.PathVariable;
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
    
    @Autowired
    private RatingCommentTourService ratingCommentTourService;
    
    
    // ==================== Controller Client =================================
    
    @GetMapping("/tours")
    public String toursView(Model model, @RequestParam(value = "tourName", required = false, defaultValue = " ") String tourName,
            @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
//        model.addAttribute("tours", this.toursService.getTours(tourName, page));
        model.addAttribute("toursWithComment", this.toursService.getTourWithComment(tourName, page));
        model.addAttribute("counter", this.toursService.countTours());
        
        return "tours";
    }
    
    @GetMapping("/tours/{tourId}")
    public String tourDetails(Model model, @PathVariable(value = "tourId") int tourId,
            @RequestParam(required = false) Map<String, String> params) {
        
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        
        model.addAttribute("tour", this.toursService.getTourById(tourId));
        model.addAttribute("commentsTour", this.ratingCommentTourService.getCommentsTour(tourId, page));
        model.addAttribute("counterComments", this.ratingCommentTourService.counterCommentTour(tourId));
        
        return "tour_details";
    }
    
    @GetMapping("/tours/{tourId}/booking")
    public String tourBooking(Model model, @PathVariable(value = "tourId") int tourId) {
        
        model.addAttribute("tourBooking", this.toursService.getTourById(tourId));
        
        
        return "tour-booking";
    }
    
    
    
    // ======================= Controller Admin ==========================
    @GetMapping("/admin/tour-management")
    public String tourManagementView(Model model, @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        model.addAttribute("tours", this.toursService.getTours(tourName));
        return "tour-management";
    }
    
    @GetMapping("/admin/tour-detail-management")
    public String tourDetailManagement(Model model, @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        
        model.addAttribute("tourDe", new TourDetail());
        model.addAttribute("tours", this.toursService.getTours(tourName));
        
        return "tour-detail-management";
    }
    
    @PostMapping("/admin/tour-management")
    public String addTour(Model model, @ModelAttribute(value="tour") @Valid Tour tour,
            BindingResult result,
            @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        String errMsg ="";
        String successMsg = "";
        if(!result.hasErrors()){
            if(this.toursService.addTour(tour)){
                successMsg = "Thêm thành công!";
                model.addAttribute("successMsg", successMsg);
                model.addAttribute("tours", this.toursService.getTours(tourName));
                return "tour-management";
            }                   
            else
                errMsg = "Đã có lỗi xảy ra khi thêm chuyến đi!!!";    
        }
        else
            errMsg = "Đã có lỗi xảy ra không vào được thêm chuyến đi!";
        model.addAttribute("errMsg", errMsg);
        return "tour-management";
    }
    
    @PostMapping("/admin/tour-detail-management")
    public String addTourDetail(Model model,
            @ModelAttribute(value="tourDe") @Valid TourDetail tourDe,
            BindingResult result,
            @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        String errMsg ="";
        String successMsg = "";
        if(!result.hasErrors()){
            if(this.toursService.addTourDetail(tourDe)){
                successMsg = "Thêm thành công!";
                model.addAttribute("successMsg", successMsg);
                model.addAttribute("tourDe", new TourDetail());
                
                model.addAttribute("tours", this.toursService.getTours(tourName));
                
                return "tour-detail-management";
            }                   
            else
                errMsg = "Lỗi thêm chi tiết tour!!!";    
        }
        else
            errMsg = "Đã có lỗi xảy ra không vào được chi tiết chuyến đi!";
        model.addAttribute("errMsg", errMsg);
        model.addAttribute("successMsg", successMsg);
        return "tour-detail-management";
    }
    
    @GetMapping("/admin/tour-photo-management")
    public String photoManagement(Model model, @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        model.addAttribute("photoOfTour", new TourPhoto());
        model.addAttribute("tours", this.toursService.getTours(tourName));
        return "tour-photo-management";
    }
    
    @PostMapping("/admin/tour-photo-management")
    public String addTourPhoto(Model model,
            @ModelAttribute(value="photoOfTour") @Valid TourPhoto photoOfTour,
            BindingResult result,
            @RequestParam(value = "tourName",
            required = false, defaultValue = "") String tourName){
        String errMsg ="";
        String successMsg = "";
        if(!result.hasErrors()){
            
            if(this.toursService.addTourPhoto(photoOfTour)){
                successMsg = "Thêm thành công!";
                model.addAttribute("successMsg", successMsg);
                model.addAttribute("tours", this.toursService.getTours(tourName));
                return "tour-photo-management";
            }                   
            else
                errMsg = "Đã có lỗi xảy ra!!!";    
        }
        else
            errMsg = "Đã có lỗi xảy ra!";
        model.addAttribute("errMsg", errMsg);
        model.addAttribute("successMsg", successMsg);
        return "tour-photo-management";
    }
}
