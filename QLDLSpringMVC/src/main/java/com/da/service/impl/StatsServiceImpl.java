/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.repository.StatsRepository;
import com.da.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author CaoNgocCuong
 */
@Service
public class StatsServiceImpl implements StatsService {

    @Autowired
    private StatsRepository statsRepository;
    
    @Override
    public List<Object[]> tourStats(String kw, Date fromDate, Date toDate) {
        return this.statsRepository.tourStats(kw, fromDate, toDate);
    }

    @Override
    public List<Object[]> tourMonthStats(String kw, Date fromDate, Date toDate) {
        return this.statsRepository.tourMonthStats(kw, fromDate, toDate);
    }

    @Override
    public List<Object[]> tourYearStats(String kw, Date fromDate, Date toDate) {
        return this.statsRepository.tourYearStats(kw, fromDate, toDate);
    }

    @Override
    public List<Object[]> tourStatsQuarter(int year) {
        return this.statsRepository.tourStatsQuarter(year);
    }
    
}
