package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * 商品总表
 * @Author Zhuang
 * @Data 2021/1/18 9:21
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Goods implements Serializable {
    private String id;
    private String name;
    private String image;
    private String categoryName;
    private String brandName;

}
