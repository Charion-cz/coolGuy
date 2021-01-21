package com.coolGuy.service.impl;

import com.coolGuy.dao.OrderDao;
import com.coolGuy.pojo.Order;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/20 19:46
 */
@Transactional
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public void SaveOrder(List<Order> orders) {
        for (Order order:orders){
            orderDao.SaveOrder(order);
        }
    }

    @Override
    public List<Order> findAll(int uid) {
        return orderDao.findAll(uid);
    }

    @Override
    public void delById(int id) {
        orderDao.delById(id);
    }

    @Override
    public void delByIds(int[] array) {
        for (int id:array){
            orderDao.delById(id);
        }
    }
}
