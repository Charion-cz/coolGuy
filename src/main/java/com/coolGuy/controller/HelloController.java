package com.coolGuy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Zhuang
 * @Data 2021/1/16 17:44
 */
@RequestMapping("/user")
@Controller
public class HelloController {

    @RequestMapping("/success")
    public String success(){
        return "success";
    }
}
