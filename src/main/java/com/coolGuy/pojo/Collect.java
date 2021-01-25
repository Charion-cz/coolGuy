package com.coolGuy.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * 收藏类
 * @Author Zhuang
 * @Data 2021/1/21 17:32
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Collect implements Serializable {

    private int id;
    private int uid;
    private String name;
    private String image;
}
