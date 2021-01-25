package com.coolGuy.dao;

import com.coolGuy.pojo.Goods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 9:43
 */
public interface GoodsDao {

    Goods findById(String id);

    //分页查找
    List<Goods> findByName(String categoryName);

    //查找总记录数
    int countTotal(String categoryName);

    //查找二级分类
    List<String> findBrand(String categoryName);
}
