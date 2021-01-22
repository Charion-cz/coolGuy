package com.coolGuy.service.impl;

import com.coolGuy.dao.AddressDao;
import com.coolGuy.pojo.Address;
import com.coolGuy.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/22 14:15
 */
@Service("addressService")
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressDao addressDao;

    @Override
    public List<Address> findAll(int uid) {
        return addressDao.findAll(uid);
    }

    @Override
    public void delAddress(int id) {
        addressDao.delAddress(id);
    }

    @Override
    public void insertAddress(Address address) {
        addressDao.insertAddress(address);
    }
}
