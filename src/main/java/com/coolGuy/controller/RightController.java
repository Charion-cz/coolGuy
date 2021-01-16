package com.coolGuy.controller;

import com.coolGuy.pojo.User;
import com.coolGuy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 权限控制器：
 * 注册，登录
 * @Author Zhuang
 * @Data 2021/1/16 10:12
 */
@Controller
@RequestMapping("/limit")
public class RightController {

    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String registerUser(){
        return "register";
    }

    @PostMapping("/toRegister")
    public String toRegisterUser(@RequestParam("username") String username,
                                 @RequestParam("phone") String phone,
                                 @RequestParam("password") String password,
                                 @RequestParam("repassword") String repassword){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setPhone(phone);
        if(password.equals(repassword)){
            userService.saveUser(user);
            return "login";
        }else{
            return "register";
        }
    }

    @RequestMapping("/login")
    public String loginUser(){
        return "login";
    }

    @RequestMapping("/toLogin")
    public String toLoginUser(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              HttpServletRequest request){
        String user = userService.findByNameAndPwd(username,password);
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        return user;
    }

    @RequestMapping("/success")
    public String success(){
        return "success";
    }
}
