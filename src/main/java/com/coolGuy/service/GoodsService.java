package com.coolGuy.service;

import com.coolGuy.pojo.Goods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 10:04
 */
public interface GoodsService {

    List<Goods> findByName(String categoryName);

    Goods findById(String id);

    int countTotal(String categoryName);

    List<String> findBrand(String categoryName);
}
