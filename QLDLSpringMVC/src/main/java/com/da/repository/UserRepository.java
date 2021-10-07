/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.repository;

import com.da.pojos.User;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */

public interface UserRepository {
    boolean addUser(User user);
    boolean addEmployeeUser(User employee);
    List<User> getUsers(String username);
    List<User> getUsersByFullName(String fullName);
    User getUsersByUsername(String username);
    User getUserById(int id);
}
