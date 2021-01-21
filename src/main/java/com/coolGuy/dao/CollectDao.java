package com.coolGuy.dao;

import com.coolGuy.pojo.Collect;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/21 17:42
 */
public interface CollectDao {

    void saveCollect(Collect collect);
    
    List<Collect> findAll(int uid);

    void delectOne(int id);
}
