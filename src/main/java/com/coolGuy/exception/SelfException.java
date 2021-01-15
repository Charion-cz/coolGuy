package com.coolGuy.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author Zhuang
 * @Data 2021/1/15 17:11
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SelfException extends Exception {
    private String message;
}
