package com.coolGuy.dao;

import com.coolGuy.pojo.User;

/**
 * @Author Zhuang
 * @Data 2021/1/15 11:47
 */
public interface UserDao {

    int saveUser(User user);

    User findByNameAndPwd(String username,String password);
}
