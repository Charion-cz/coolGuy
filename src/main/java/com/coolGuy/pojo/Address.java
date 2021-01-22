package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author Zhuang
 * @Data 2021/1/22 14:08
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Address implements Serializable {

    private int id;
    private int uid;
    private String username;
    private String address;
    private String phone;
    private String area;
}
