package com.coolGuy.service;

import com.coolGuy.pojo.Address;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/22 14:15
 */
public interface AddressService {

    List<Address> findAll(int uid);

    void delAddress(int id);

    void insertAddress(Address address);
}
