package com.coolGuy.controller;

import com.coolGuy.pojo.CartGoods;
import com.coolGuy.pojo.Goods;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping("/myOrder")
    public String toOrder(){

        return "/order/center-index";
    }

    @RequestMapping("/toCollect/{id}/{userId}")
    public ModelAndView toCollect(@PathVariable("id") int id,
                                  @PathVariable("userId") int userId){
        ModelAndView mv = new ModelAndView();
        //通过id查出仓库的商品
        Goods goods = goodsService.findById(id);
        //将商品放入购物车
        CartGoods cartGoods = new CartGoods();
        cartGoods.setUid(userId);
        cartGoods.setName(goods.getName());
        cartGoods.setParentId(goods.getParentId());
        cartGoods.setTemplateId(goods.getTemplateId());
        cartGoodsService.saveGoods(cartGoods);
        //同时将商品展示在页面
        mv.addObject("goodsName",goods.getName());
        mv.setViewName("order/success-cart");
        return mv;
    }

    @RequestMapping("/toCart")
    public ModelAndView toIndex(){
        ModelAndView mv = new ModelAndView();
        //查出用户购物车中所有的商品，发送到前台
        List<CartGoods> list = cartGoodsService.findAll();
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
        List<CartGoods> list = cartGoodsService.findAll();
        mv.addObject("cartGoods",list);
        mv.setViewName("order/cart");
        return mv;
    }

    @RequestMapping("/delSelectOrd")
    public ModelAndView delSelectOrd(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        String[] ids = request.getParameterValues("uid");
        int[] array = Arrays.asList(ids).stream().mapToInt(Integer::parseInt).toArray();
        List<Integer> arrays = Arrays.stream(array).boxed().collect(Collectors.toList());
        //首先查出这些id对应的购物车商品,打包成集合
        List<CartGoods> list = cartGoodsService.findAllByIds(arrays);
        //将这些商品存入订单表

        //将购物车的商品删掉
        cartGoodsService.delSelect(ids);
        mv.setViewName("order/success");
         return mv;
    }

}
