/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.pojos.Tour;
import com.da.repository.ToursRepository;
import com.da.service.ToursService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class ToursServiceImpl implements ToursService{

    @Autowired
    private ToursRepository toursRepository;
    
    @Override
    public List<Tour> getTours(String tourName, int page) {
        return this.toursRepository.getTours(tourName, page);
    }

    @Override
    public long countTours() {
        return this.toursRepository.countTours();
    }
    
}
