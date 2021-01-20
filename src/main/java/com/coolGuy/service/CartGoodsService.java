package com.coolGuy.service;

import com.coolGuy.pojo.CartGoods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/19 19:48
 */
public interface CartGoodsService {

    void saveGoods(CartGoods cartGoods);

    List<CartGoods> findAll();

    void delById(int id);

    void delSelect(String[] ids);

    List<CartGoods> findAllByIds(List<Integer> ids);
}
