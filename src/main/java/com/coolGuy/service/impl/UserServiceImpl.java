package com.coolGuy.service.impl;

import com.coolGuy.dao.UserDao;
import com.coolGuy.pojo.User;
import com.coolGuy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @Author Zhuang
 * @Data 2021/1/15 11:48
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User findByNameAndPwd(String username,String password) {

        return userDao.findByNameAndPwd(username,password);
    }
}
