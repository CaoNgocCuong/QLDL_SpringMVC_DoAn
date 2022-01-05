/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.da.controllers;

import com.da.pojos.User;
import com.da.service.UserService;
import com.da.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private WebAppValidator userValidator;
    
    @Autowired
    private MailSender mailSender;
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(userValidator);
//    }
    
    @GetMapping("/register")
    public String registerView(Model model) {
      model.addAttribute("userRes", new User());
      return "register";
    }
    
    @PostMapping("/register")
    public String add(Model model, @ModelAttribute(value="userRes") @Valid User userRes, BindingResult result) {
        String errMsg ="";
        if(!result.hasErrors()){
            if(userRes.getPassword().equals(userRes.getConfirmPassword())){
                if(this.userService.addUser(userRes) == true){
                    sendMail("ngoccuong01032000@gmail.com", userRes.getEmail(), "Travel CK", "Ban da dang ky thanh vien Travel CK thanh cong"
                            + " voi ten dang nhap la: " + userRes.getUsername()
                            + "\nNhanh tay chon cho minh mot tour du lich hap dan ngay nao!");
                    return "redirect:/login";
                }                   
                else
                    errMsg = "Đã có lỗi xảy ra!!!";
            }
            else
                errMsg = "Mật khẩu không khớp!";      
        }
        else
            errMsg = "Đã có lỗi xảy ra không thêm được người dùng!";
        model.addAttribute("errMsg", errMsg);
        return "register";
    }
    
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    
    @GetMapping("/admin/user-management")
    public String userManagementView(Model model, @RequestParam(value = "kw",
            required = false, defaultValue = "") String kw) {
        model.addAttribute("employee", new User());
        model.addAttribute("users", this.userService.getUsersByFullName(kw));
        return "user-management";
    }
    
    @PostMapping("/admin/user-management")
    public String addEmployee(Model model,
            @ModelAttribute(value="employee") @Valid User employee,
            BindingResult result,
            @RequestParam(value = "kw",
            required = false, defaultValue = "") String kw) {
        String errMsg ="";
        String successMsg = "";
        if(!result.hasErrors()){
            if(employee.getPassword().equals(employee.getConfirmPassword())){
                if(this.userService.addEmployeeUser(employee) == true){
                    successMsg = "Thêm thành công!";
                    model.addAttribute("successMsg", successMsg);
                    model.addAttribute("users", this.userService.getUsersByFullName(kw));
                    return "user-management";
                }                   
                else
                    errMsg = "Đã có lỗi xảy ra!!!";
            }
            else
                errMsg = "Mật khẩu không khớp!";      
        }
        else
            errMsg = "Đã có lỗi xảy ra!";
        model.addAttribute("errMsg", errMsg);

        return "user-management";
    }
    public void sendMail(String from, String to, String subject, String content){
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(content);
        
        mailSender.send(mailMessage);
    }
}


