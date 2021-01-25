package com.coolGuy.controller;

import com.coolGuy.pojo.CartGoods;
import com.coolGuy.pojo.Goods;
import com.coolGuy.pojo.Order;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.GoodsService;
import com.coolGuy.service.OrderService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author Zhuang
 * @Data 2021/1/19 16:25
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CartGoodsService cartGoodsService;
    @Autowired
    private OrderService orderService;

    //进入我的中心
    @RequestMapping("/myOrder")
    public ModelAndView toOrder(HttpServletRequest request){
        HttpSession session = request.getSession();
        ModelAndView mv = new ModelAndView();
        Integer id = (Integer) session.getAttribute("userId");
        List<Order> list = orderService.findAll(id);
        mv.addObject("order",list);
        mv.setViewName("order/center-index");
        return mv;
    }

    //添加到购物车
    @RequestMapping("/toCollect/{id}/{userId}")
    public ModelAndView toCollect(@PathVariable("id") String id,
                                  @PathVariable("userId") int userId){
        ModelAndView mv = new ModelAndView();
        //通过id查出仓库的商品
        Goods goods = goodsService.findById(id);
        //将商品放入购物车
        CartGoods cartGoods = new CartGoods();
        cartGoods.setUid(userId);
        cartGoods.setName(goods.getName());
        cartGoods.setImage(goods.getImage());
        cartGoodsService.saveGoods(cartGoods);
        //同时将商品展示在页面
        mv.addObject("goodsImage",goods.getImage());
        mv.addObject("goodsName",goods.getName());
        mv.setViewName("order/success-cart");
        return mv;
    }

    //进入购物车
    @RequestMapping("/toCart")
    public ModelAndView toIndex(HttpServletRequest request){
        int uid = (int) request.getSession().getAttribute("userId");
        ModelAndView mv = new ModelAndView();
        //查出用户购物车中所有的商品，发送到前台
        List<CartGoods> list = cartGoodsService.findAll(uid);
        mv.addObject("cartGoods",list);
        mv.setViewName("order/cart");
        return mv;
    }

    @RequestMapping("/deleteOrder/{userId}")
    public ModelAndView deleteOrder(@PathVariable("userId") String userId){
        ModelAndView mv = new ModelAndView();
        int id = Integer.parseInt(userId);
        cartGoodsService.delById(id);
        //查出用户购物车中所有的商品，发送到前台
        List<CartGoods> list = cartGoodsService.findAll(id);
        mv.addObject("cartGoods",list);
        mv.setViewName("order/cart");
        return mv;
    }

    //订单页的结算
    @RequestMapping("/delSelectOrd")
    public ModelAndView delSelectOrd(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        String[] ids = request.getParameterValues("uid");
        int[] array = Arrays.asList(ids).stream().mapToInt(Integer::parseInt).toArray();
        List<Integer> arrays = Arrays.stream(array).boxed().collect(Collectors.toList());
        //首先查出这些id对应的购物车商品,打包成集合
        List<CartGoods> list = cartGoodsService.findAllByIds(arrays);
        //将这些商品存入订单表
        List<Order> orderList = new ArrayList<>();
        for (CartGoods cartGoods:list){
            Order order = new Order();
            order.setUid(cartGoods.getUid());
            order.setName(cartGoods.getName());
            order.setImage(cartGoods.getImage());
            orderList.add(order);
        }
        orderService.SaveOrder(orderList);
        //将购物车的商品删掉
        cartGoodsService.delSelect(ids);
        mv.setViewName("order/success");
        return mv;
    }

    //
    @RequestMapping("/delTheOrder/{userId}")
    public ModelAndView delTheOrder(@PathVariable("userId") String userId,HttpServletRequest request){
        HttpSession session = request.getSession();
        ModelAndView mv = new ModelAndView();
        //获取用户id
        Integer uid = (Integer) session.getAttribute("userId");
        //获取要删除的商品id
        int id = Integer.parseInt(userId);
        //删除订单
        orderService.delById(id);
        //查出用户订单中所有的商品，发送到前台
        List<Order> list = orderService.findAll(uid);
        mv.addObject("order",list);
        mv.setViewName("order/center-index");
        return mv;
    }

}
