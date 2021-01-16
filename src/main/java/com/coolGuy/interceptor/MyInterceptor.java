package com.coolGuy.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 拦截器：登录验证
 * @Author Zhuang
 * @Data 2021/1/16 15:25
 */
public class MyInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if(session.getAttribute("user") != null){
            return true;
        }else{
            response.sendRedirect(request.getContextPath()+"/limit/login");
            return false;
        }

    }
}
