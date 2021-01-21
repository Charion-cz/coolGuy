package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * 订单类
 * @Author Zhuang
 * @Data 2021/1/20 19:26
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Order implements Serializable {

    private int id;
    private int uid;
    private String name;
    private int parentId;
    private int templateId;

}
