package com.coolGuy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Zhuang
 * @Data 2021/1/19 16:25
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @RequestMapping("/myOrder")
    public String toOrder(){

        return "/order/center-index";
    }

    @RequestMapping("/toCart")
    public String toIndex(){

        return "order/cart";
    }
}
