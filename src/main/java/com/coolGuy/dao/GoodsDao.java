package com.coolGuy.dao;

import com.coolGuy.pojo.Goods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 9:43
 */
public interface GoodsDao {

    Goods findById(int id);

    List<Goods> findByName(String name);

    int countTotal(String name);
}
