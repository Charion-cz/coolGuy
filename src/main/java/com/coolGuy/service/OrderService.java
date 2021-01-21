package com.coolGuy.service;

import com.coolGuy.pojo.Order;

import java.util.List;


/**
 * @Author Zhuang
 * @Data 2021/1/20 19:45
 */
public interface OrderService {

    void SaveOrder(List<Order> orders);

    List<Order> findAll(int uid);

    void delById(int id);

    void delByIds(int[] array);
}
