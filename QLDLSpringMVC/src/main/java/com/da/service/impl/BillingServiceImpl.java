/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.service.impl;

import com.da.repository.BillingRepository;
import com.da.service.BillingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class BillingServiceImpl implements BillingService{
    @Autowired
    private BillingRepository billingRepository;
    
    @Override
    public boolean addBill(int bookingId) {
        return this.billingRepository.addBill(bookingId);
    }
    
}
