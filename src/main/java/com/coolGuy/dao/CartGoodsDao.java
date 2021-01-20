package com.coolGuy.dao;

import com.coolGuy.pojo.CartGoods;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/19 19:46
 */
public interface CartGoodsDao {

    //添加到购物车
    int saveGoods(CartGoods cartGoods);

    //查找购物车信息
    List<CartGoods> findAll();

    //单个删除
    int delById(Integer id);

    //根据ids查找商品
    List<CartGoods> findAllByIds(List<Integer> ids);

}
