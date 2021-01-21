package com.coolGuy.service;

import com.coolGuy.pojo.Collect;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/21 17:41
 */
public interface CollectService {

    void saveOne(Collect collect);
    
    List<Collect> findAll(int uid);

    void delectOne(int id);
}
