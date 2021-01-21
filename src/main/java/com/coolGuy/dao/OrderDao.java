package com.coolGuy.dao;

import com.coolGuy.pojo.Order;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/20 19:40
 */
public interface OrderDao {

    void SaveOrder(Order order);

    List<Order> findAll(int uid);

    void delById(int id);
}
