/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.pojos.Rating;
import com.da.pojos.Tour;
import com.da.pojos.User;
import com.da.repository.RatingCommentTourRepository;
import com.da.repository.ToursRepository;
import com.da.repository.UserRepository;
import com.da.service.RatingCommentTourService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author CaoNgocCuong
 */
@Service
public class RatingCommentTourServiceImpl implements RatingCommentTourService {

    @Autowired
    private ToursRepository toursRepository; 
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RatingCommentTourRepository ratingCommentTourRepository;
    
    @Override
    public Rating addCommentTour(String comment, int tourId, String username) {
        Tour t = this.toursRepository.getTourById(tourId);
        
        User u = this.userRepository.getUsersByUsername(username);
        Rating r = new Rating();
        r.setComment(comment);
        r.setTour(t);
        r.setUser(u);
        r.setRatingDate(new Date());
        
        return this.ratingCommentTourRepository.addCommentTour(r);
    }
    
}
