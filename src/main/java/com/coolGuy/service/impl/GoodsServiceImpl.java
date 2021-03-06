package com.coolGuy.service.impl;

import com.coolGuy.dao.GoodsDao;
import com.coolGuy.pojo.Goods;
import com.coolGuy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/18 10:05
 */
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDao;

    @Override
    public List<Goods> findByName(String categoryName) {
        categoryName = "%" + categoryName + "%";
        return goodsDao.findByName(categoryName);
    }

    @Override
    public Goods findById(String id) {
        return goodsDao.findById(id);
    }

    @Override
    public int countTotal(String categoryName) {
        categoryName = "%" + categoryName + "%";
        return goodsDao.countTotal(categoryName);
    }

    @Override
    public List<String> findBrand(String categoryName) {
        categoryName = "%" + categoryName + "%";
        return goodsDao.findBrand(categoryName);
    }

}
