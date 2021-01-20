package com.coolGuy.service.impl;

import com.coolGuy.pojo.Order;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Zhuang
 * @Data 2021/1/20 19:46
 */
@Transactional
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderService orderService;
    @Autowired
    private CartGoodsService cartGoodsService;

    @Override
    public void SaveOrder(Order order) {

    }
}
