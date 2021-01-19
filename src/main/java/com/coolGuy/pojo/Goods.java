package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author Zhuang
 * @Data 2021/1/18 9:21
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Goods implements Serializable {
    private int id;
    private String name;
    private int goodsNum;
    private int parentId;
    private int templateId;

}
