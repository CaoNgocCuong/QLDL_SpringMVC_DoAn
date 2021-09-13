/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository;

import com.da.pojos.Tour;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface ToursRepository {
    List<Tour> getTours(String tourName, int page);
    
    long countTours();
}
