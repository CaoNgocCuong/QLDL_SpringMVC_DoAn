/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository;

import com.da.pojos.Tag;
import java.util.List;

/**
 *
 * @author CaoNgocCuong
 */
public interface TagRepository {
    List<Tag> getTags();
}
