package com.coolGuy.service;

import com.coolGuy.pojo.Goods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 10:04
 */
public interface GoodsService {

    List<Goods> findByName(String name);

    Goods findById(int id);

    int countTotal(String name);
}
