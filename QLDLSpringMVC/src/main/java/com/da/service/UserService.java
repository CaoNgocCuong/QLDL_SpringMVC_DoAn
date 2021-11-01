/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service;

import com.da.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;
/**
 *
 * @author Admin
 */

public interface UserService extends UserDetailsService {
    boolean addUser(User user);
    boolean addEmployeeUser(User employee);
    List<User> getUsers(String username);
    List<User> getUsersByFullName(String fullName);
    User getUsersByUsername(String username);
    User getUserById(int id);
    long countUserWithRole(String role);
    boolean deleteUser(int id);
}
