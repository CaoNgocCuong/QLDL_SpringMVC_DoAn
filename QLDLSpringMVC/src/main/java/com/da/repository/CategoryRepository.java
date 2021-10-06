/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository;

import com.da.pojos.Category;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author CaoNgocCuong
 */
@Repository
public interface CategoryRepository {
    List<Category> getCategories();
    List<Object> countPostInCate();
}
