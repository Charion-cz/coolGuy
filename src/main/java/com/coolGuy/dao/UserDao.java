package com.coolGuy.dao;

import com.coolGuy.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/15 11:47
 */
public interface UserDao {

    List<User> findAll();

    void saveUser(User user);
}
