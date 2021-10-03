/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.da.pojos.Tag;
import com.da.repository.TagRepository;
import com.da.service.TagService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author CaoNgocCuong
 */
@Service
public class TagServiceImpl implements TagService {
    
    @Autowired
    private TagRepository tagRepository;

    @Override
    public List<Tag> getTags() {
        return this.tagRepository.getTags();
    }
    
}
