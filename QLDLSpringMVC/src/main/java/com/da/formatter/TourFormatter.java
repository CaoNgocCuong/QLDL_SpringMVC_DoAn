/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.formatter;

import com.da.pojos.Tour;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author CaoNgocCuong
 */
public class TourFormatter implements Formatter<Tour>{

    @Override
    public String print(Tour object, Locale locale) {
        return String.valueOf(object.getId());
    }

    @Override
    public Tour parse(String tourId, Locale locale) throws ParseException {
        Tour t = new Tour();
        t.setId(Integer.parseInt(tourId));
        
        return t;
     }
    
}
