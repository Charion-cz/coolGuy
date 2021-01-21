package com.coolGuy.service.impl;

import com.coolGuy.dao.CollectDao;
import com.coolGuy.pojo.Collect;
import com.coolGuy.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/21 17:42
 */
@Service("collectService")
public class CollectServiceImpl implements CollectService {

    @Autowired
    private CollectDao collectDao;

    @Override
    public void saveOne(Collect collect) {
        collectDao.saveCollect(collect);
    }

    @Override
    public List<Collect> findAll(int uid) {
        return collectDao.findAll(uid);
    }

    @Override
    public void delectOne(int id) {
        collectDao.delectOne(id);
    }
}
