package com.coolGuy.service;

import com.coolGuy.pojo.User;


/**
 * @Author Zhuang
 * @Data 2021/1/15 11:47
 */
public interface UserService {

    //新建用户
    void saveUser(User user);

    //登录
    String findByNameAndPwd(String username,String password);
}
