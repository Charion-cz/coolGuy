package com.coolGuy.service.impl;

import com.coolGuy.dao.CartGoodsDao;
import com.coolGuy.pojo.CartGoods;
import com.coolGuy.service.CartGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/19 19:48
 */
@Transactional
@Service("/cartGoodsService")
public class CartGoodsServiceImpl implements CartGoodsService {

    @Autowired
    private CartGoodsDao cartGoodsDao;

    @Override
    public void saveGoods(CartGoods cartGoods) {
        cartGoodsDao.saveGoods(cartGoods);
    }

    @Override
    public List<CartGoods> findAll() {

        return cartGoodsDao.findAll();
    }

    @Override
    public void delById(int id) {
        cartGoodsDao.delById(id);
    }

    @Override
    public void delSelect(String[] ids) {
        if(ids != null & ids.length > 0){
            for (String id:ids){
                cartGoodsDao.delById(Integer.parseInt(id));
            }
        }
    }

    @Override
    public List<CartGoods> findAllByIds(List<Integer> ids) {
        return cartGoodsDao.findAllByIds(ids);
    }
}
