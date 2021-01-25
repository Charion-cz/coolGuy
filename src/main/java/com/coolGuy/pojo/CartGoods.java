package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * 购物车
 * @Author Zhuang
 * @Data 2021/1/19 19:44
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CartGoods implements Serializable {

    private int id;
    private int uid;
    private String name;
    private String image;
}
