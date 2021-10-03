/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.da.pojos.User;
import com.da.repository.UserRepository;
import com.da.service.UserService;
import java.io.IOException;
import static java.lang.Boolean.TRUE;
import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Admin
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private Cloudinary cloudinary;
    
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
    @Override
    public boolean addUser(User user) {
       String pass = user.getPassword();
       user.setPassword(this.passwordEncoder.encode(pass));
       user.setUserRole(User.ROLE_USER);
       user.setActive(TRUE);
       try {
            Map r = this.cloudinary.uploader().upload(user.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            user.setAvatar((String) r.get("secure_url"));
            return this.userRepository.addUser(user);
       } catch (IOException ex) {
            System.err.println("===ADD===" + ex.getMessage());
            ex.printStackTrace();
       }  
       
       return false;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<User> users = this.getUsers(username);
        if (users.isEmpty()) {
            throw new UsernameNotFoundException("Không tồn tại tài khoản này!");
        }
        User u = users.get(0);

        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(u.getUserRole()));
        
        return new org.springframework.security.core.userdetails.User(u.getUsername(), u.getPassword(), authorities);
    }

    @Override
    public List<User> getUsers(String username) {
        return this.userRepository.getUsers(username);
    }

    @Override
    public boolean addEmployeeUser(User employee) {
        String pass = employee.getPassword();
        employee.setPassword(this.passwordEncoder.encode(pass));
        employee.setUserRole(User.ROLE_EMPLOYEE);
        employee.setActive(TRUE);
        try {
             Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
             employee.setAvatar((String) r.get("secure_url"));
             return this.userRepository.addUser(employee);
        } catch (IOException ex) {
             System.err.println("===ADD===" + ex.getMessage());
             ex.printStackTrace();
        }  

        return false;
    }

    @Override
    public User getUserById(int id) {
        return this.userRepository.getUserById(id);
    }
    
}
