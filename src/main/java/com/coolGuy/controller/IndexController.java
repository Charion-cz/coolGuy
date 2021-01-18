package com.coolGuy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/16 18:44
 */
@Controller
@RequestMapping("order")
public class IndexController {

    @PostMapping("/complete")
    public String complete(@RequestParam("complete") String complete, HttpServletRequest request){


        return "order/search";
    }

    @RequestMapping("/search")
    public String toIndex(){
        return "order/search";
    }
}
