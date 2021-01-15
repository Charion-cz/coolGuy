package com.coolGuy.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author Zhuang
 * @Data 2021/1/15 17:13
 */
public class SelfExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        //获取异常对象
        SelfException exception = null;
        if(ex instanceof SelfException){
            exception = (SelfException) ex;
        }else  {
            exception = new SelfException("系统正在维护。。。");
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("errorMsg", exception.getMessage());
        mv.setViewName("error");
        return mv;
    }
}
