/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.da.pojos.Tour;
import com.da.pojos.TourDetail;
import com.da.pojos.TourPhoto;
import com.da.repository.ToursRepository;
import com.da.service.ToursService;
import java.io.IOException;
import static java.lang.Boolean.TRUE;
import java.util.List;
import java.util.Map;
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
    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public List<Tour> getTours(String tourName, int page) {
        return this.toursRepository.getTours(tourName, page);
    }

    @Override
    public long countTours() {
        return this.toursRepository.countTours();
    }

    @Override
    public List<Tour> getTours(String tourName) {
        return this.toursRepository.getTours(tourName);
    }

    @Override
    public boolean addTour(Tour tour) {
        try {
            if(!tour.getFile().isEmpty() && tour.getFile() != null){
                Map r = this.cloudinary.uploader().upload(tour.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                tour.setPhoto((String) r.get("secure_url"));
            }
            else
                tour.setPhoto(this.toursRepository.getTourById(tour.getId()).getPhoto());
            return this.toursRepository.addTour(tour);
        } catch (IOException ex) {
            System.err.println("===ADD===" + ex.getMessage());
            ex.printStackTrace();
        }  

        return false;
    }

    @Override
    public boolean addTourDetail(TourDetail tourDetail) {
        return this.toursRepository.addTourDetails(tourDetail);
    }

    @Override
    public boolean addTourPhoto(TourPhoto tourPhoto) {
        try {
            Map r = this.cloudinary.uploader().upload(tourPhoto.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            tourPhoto.setPhoto((String) r.get("secure_url"));
            return this.toursRepository.addTourPhoto(tourPhoto);
       } catch (IOException ex) {
            System.err.println("===ADD===" + ex.getMessage());
            ex.printStackTrace();
       }  
       return false;
    }

    @Override
    public Tour getTourById(int id) {
        return this.toursRepository.getTourById(id);
    }

    @Override
    public long countToursByKw(String kw) {
        return this.toursRepository.countToursByKw(kw);
    }

    @Override
    public List<Object> getTourWithComment(String tourName, int page) {
        return this.toursRepository.getTourWithComment(tourName, page);
    }

    @Override
    public List<Tour> getTours(int id) {
        return this.toursRepository.getTours(id);
    }

    @Override
    public boolean deletePhoto(int id) {
        return this.toursRepository.deletePhoto(id);
    }

    @Override
    public boolean deleteTourDetail(int id) {
        return this.toursRepository.deleteTourDetail(id);
    }

    @Override
    public boolean deleteTour(int id) {
        return this.toursRepository.deleteTour(id);
    }

}
