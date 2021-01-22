package com.coolGuy.controller;

import com.coolGuy.pojo.Address;
import com.coolGuy.pojo.User;
import com.coolGuy.service.AddressService;
import com.coolGuy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.util.List;

/**
 * 个人信息修改
 * @Author Zhuang
 * @Data 2021/1/22 10:43
 */
@Controller
@RequestMapping("/info")
public class InfoController {

    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;

    //展示个人信息
    @RequestMapping("/toSettingInfo")
    public ModelAndView showUser(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("userId");
        User user = userService.findById(id);
        mv.addObject("user",user);
        mv.setViewName("order/center-setting-info");
        return mv;
    }

    @RequestMapping("/toUpUser")
    public ModelAndView updateUser(@RequestParam("username") String username,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("password") String password,
                                   @RequestParam("newPassword") String newPassword,
                                   @RequestParam("rePassword") String rePassword,
                                   HttpServletRequest request, ModelAndView mv){
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("userId");
        User user = new User();
        if(password.equals(newPassword)){
            if(newPassword.equals(rePassword)){
                user.setId(id);
                user.setPassword(newPassword);
                user.setUsername(username);
                user.setPhone(phone);
                userService.updateUser(user);
            }
        }
        User u = userService.findById(id);
        mv.addObject("user",u);
        mv.setViewName("order/center-setting-info");
        return mv;
    }

    @RequestMapping("/toSettingAddress")
    public ModelAndView toSetAddress(HttpServletRequest request,ModelAndView mv){
        HttpSession session = request.getSession();
        int uid = (int) session.getAttribute("userId");
        List<Address> list = addressService.findAll(uid);
        mv.addObject("list",list);
        mv.setViewName("order/center-setting-address");
        return mv;
    }

    @RequestMapping("/delAddress/{id}")
    public ModelAndView delAddress(@PathVariable("id") int id,ModelAndView mv,HttpServletRequest request){
        HttpSession session = request.getSession();
        addressService.delAddress(id);
        int uid = (int) session.getAttribute("userId");
        List<Address> list = addressService.findAll(uid);
        mv.addObject("list",list);
        mv.setViewName("order/center-setting-address");
        return mv;
    }

    @RequestMapping("/insertAddress")
    public ModelAndView insertAddress(Address address,HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        int uid = (int) session.getAttribute("userId");
        address.setUid(uid);
        addressService.insertAddress(address);
        List<Address> list = addressService.findAll(uid);
        mv.addObject("list",list);
        mv.setViewName("order/center-setting-address");
        return mv;
    }
}
