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
import java.util.Date;
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
       if(pass != null)
           user.setPassword(this.passwordEncoder.encode(pass));
       user.setUserRole(User.ROLE_USER);
       user.setActive(TRUE);
       if(user.getCreatedDate() == null)
           user.setCreatedDate(new Date());
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
    public User getUsersByUsername(String username) {
        return this.userRepository.getUsersByUsername(username);
    }
    
    
    @Override
    public List<User> getUsersByFullName(String fullName) {
        return this.userRepository.getUsersByFullName(fullName);
    }

    @Override
    public boolean addEmployeeUser(User employee) {
        
        
        try {
            String pass = employee.getPassword();
            if(pass.equals(this.userRepository.getUserById(employee.getId())) == true)
                employee.setPassword(this.userRepository.getUserById(employee.getId()).getPassword());
            else
                employee.setPassword(this.passwordEncoder.encode(pass));
            employee.setUserRole(User.ROLE_EMPLOYEE);
            if(this.userRepository.getUserById(employee.getId()) == null)
                employee.setCreatedDate(new Date());
            else
                employee.setCreatedDate(this.userRepository.getUserById(employee.getId()).getCreatedDate());
            if(employee.getPhone() == "" || employee.getPhone().isEmpty())
                employee.setPhone(null);
            if(!employee.getFile().isEmpty() && employee.getFile() != null){
               Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
               employee.setAvatar((String) r.get("secure_url"));
            }
            else
                employee.setAvatar(this.userRepository.getUserById(employee.getId()).getAvatar());
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

    @Override
    public long countUserWithRole(String role) {
        return this.userRepository.countUserWithRole(role);
    }

    @Override
    public boolean deleteUser(int id) {
        return this.userRepository.deleteUser(id);
    }

}
