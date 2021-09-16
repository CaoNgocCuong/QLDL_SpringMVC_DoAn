/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service;

import com.da.pojos.Tour;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface ToursService {
    List<Tour> getTours(String tourName, int page);
    List<Tour> getTours(String tourName);
    boolean addTour(Tour tour);
    long countTours();
}
