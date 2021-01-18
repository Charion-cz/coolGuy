package com.coolGuy.dao;

import com.coolGuy.pojo.Goods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 9:43
 */
public interface OrderDao {

    List<Goods> findByName(String name);
}
