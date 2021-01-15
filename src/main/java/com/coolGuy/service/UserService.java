package com.coolGuy.service;

import com.coolGuy.pojo.User;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/15 11:47
 */
public interface UserService {

    List<User> findAll();

    void saveUser(User user);
}
