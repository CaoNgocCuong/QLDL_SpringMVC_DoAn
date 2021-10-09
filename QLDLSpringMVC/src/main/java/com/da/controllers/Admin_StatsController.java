/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.service.StatsService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author CaoNgocCuong
 */
@Controller
public class Admin_StatsController {
    
    @Autowired
    private StatsService statsService;
    
    @GetMapping("/admin/stats-tour")
    public String adminStatsTour(Model model,
            @RequestParam (required = false) Map<String, String> params) {
        SimpleDateFormat fmd = new SimpleDateFormat("yyyy-MM-dd"); 
        
        String kw = params.getOrDefault("kw", null);
        
        Date fromDate = null;
        Date toDate = null;
        
        try {
            String from = params.getOrDefault("fromDate", null);
            if (from != null) {
                fromDate = fmd.parse(from);
            }

            

            String to = params.getOrDefault("toDate", null);
            if (to != null) {
                toDate = fmd.parse(to);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
    
        model.addAttribute("tourStats", this.statsService.tourStats(kw, fromDate, toDate));
        return "stats-tour";
    }
        
    @RequestMapping("/admin/stats-tour-month")
    public String adminStatsTourMonth(Model model,
            @RequestParam (required = false) Map<String, String> params) {
        
        SimpleDateFormat fmd = new SimpleDateFormat("yyyy-MM-dd"); 
        
        String kw = params.getOrDefault("kw", null);
        
        Date fromDate = null;
        Date toDate = null;
        
        try {
            String from = params.getOrDefault("fromDate", null);
            if (from != null) {
                fromDate = fmd.parse(from);
            }

            

            String to = params.getOrDefault("toDate", null);
            if (to != null) {
                toDate = fmd.parse(to);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        
        
        model.addAttribute("tourStatsMonth", this.statsService.tourMonthStats(kw, fromDate, toDate));
        return "stats-tour-month";
    }
    
    @RequestMapping("/admin/stats-tour-year")
    public String adminStatsTourYear(Model model,
            @RequestParam (required = false) Map<String, String> params) {
        
        SimpleDateFormat fmd = new SimpleDateFormat("yyyy-MM-dd"); 
        
        String kw = params.getOrDefault("kw", null);
        
        Date fromDate = null;
        Date toDate = null;
        
        try {
            String from = params.getOrDefault("fromDate", null);
            if (from != null) {
                fromDate = fmd.parse(from);
            }

            String to = params.getOrDefault("toDate", null);
            if (to != null) {
                toDate = fmd.parse(to);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        
        
        model.addAttribute("tourStatsYear", this.statsService.tourYearStats(kw, fromDate, toDate));
        return "stats-tour-year";
    }
}
