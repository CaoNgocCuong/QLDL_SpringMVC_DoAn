/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.Rating;
import com.da.service.RatingCommentTourService;
import java.util.Map;
import javax.print.attribute.standard.Media;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author CaoNgocCuong
 */
@RestController
public class ApiRatingCommentController {
    
    @Autowired
    private RatingCommentTourService ratingCommentTourService;
    
    @PostMapping(path = "/api/add-commentTour", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Rating> addCommentTour(@RequestBody Map<String, String> params) {
        try {
            String comment = params.get("content");
            int tourId = Integer.parseInt(params.get("tourId"));
            String username = params.get("username");
           
            Rating r = this.ratingCommentTourService.addCommentTour(comment, tourId, username);
            
            return new ResponseEntity<>(r, HttpStatus.CREATED);
            
        } catch(Exception ex) {
            ex.printStackTrace();
        }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
