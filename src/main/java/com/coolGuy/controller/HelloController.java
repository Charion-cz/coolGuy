package com.coolGuy.controller;

import com.coolGuy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Zhuang
 * @Data 2021/1/15 11:59
 */
@Controller
@RequestMapping("/user")
public class HelloController {

    @Autowired
    private UserService userService;

    @RequestMapping("/hello")
    public String hello(){
        System.out.println("controller");
        userService.findAll();
        return "success";
    }
}
