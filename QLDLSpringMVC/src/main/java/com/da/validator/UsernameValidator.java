/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.validator;

import com.da.pojos.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Admin
 */
@Component
public class UsernameValidator implements Validator {

    @Override
    public boolean supports(Class<?> arg0) {
        return User.class.isAssignableFrom(arg0);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User u = (User) target;
        if (u.getUsername().contains(" "))
            errors.reject("username", "user.username.spaceErr");
    }
    
}
