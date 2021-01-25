package com.coolGuy.controller;

import com.coolGuy.pojo.CartGoods;
import com.coolGuy.pojo.Collect;
import com.coolGuy.pojo.Goods;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.CollectService;
import com.coolGuy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * @Author Zhuang
 * @Data 2021/1/21 16:50
 */
@Controller
@RequestMapping("/collect")
public class CollectController {

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CollectService collectService;
    @Autowired
    private CartGoodsService cartGoodsService;

    //搜索表格跳去收藏
    @RequestMapping("/centerCollect/{id}/{userId}")
    public ModelAndView toCollect(@PathVariable(value = "id") String id,
                                  @PathVariable(value = "userId") int userId){
        ModelAndView mv = new ModelAndView();
        Goods goods = goodsService.findById(id);
        Collect collect = new Collect();
        collect.setUid(userId);
        collect.setName(goods.getName());
        collect.setImage(goods.getImage());
        collectService.saveOne(collect);
        List<Collect> list = collectService.findAll(userId);
        mv.addObject("list",list);
        mv.setViewName("order/center-collect");
        return mv;
    }

    //侧边栏跳去收藏
    @RequestMapping("/toCenterCollect")
    public ModelAndView _toCollect(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        List<Collect> list = collectService.findAll(userId);
        mv.addObject("list",list);
        mv.setViewName("order/center-collect");
        return mv;
    }

    //删除收藏
    @RequestMapping("/delCollect/{id}/{userId}")
    public ModelAndView delCollect(@PathVariable("id") int id,
                                   @PathVariable("userId") int uid){
        ModelAndView mv = new ModelAndView();
        collectService.delectOne(id);
        List<Collect> list = collectService.findAll(uid);
        mv.addObject("list",list);
        mv.setViewName("order/center-collect");
        return mv;
    }

    //购物车移到收藏
    @RequestMapping("/mvToCollect/{id}/{uid}")
    public ModelAndView moveToCollect(@PathVariable("id")int id,
                                      @PathVariable("uid")int uid,
                                      ModelAndView mv){
        CartGoods cartGoods = cartGoodsService.findById(id);
        Collect collect = new Collect();
        collect.setUid(uid);
        collect.setName(cartGoods.getName());
        collect.setImage(cartGoods.getImage());
        collectService.saveOne(collect);
        cartGoodsService.delById(id);
        List<Collect> list = collectService.findAll(uid);
        mv.addObject("list",list);
        mv.setViewName("order/center-collect");
        return mv;
    }

    //收藏夹移到购物车
    @RequestMapping("/mvToCart/{id}/{uid}")
    public ModelAndView moveToCart(@PathVariable("id")int id,
                                   @PathVariable("uid")int uid,
                                   ModelAndView mv){
        Collect collect = collectService.findById(id);
        CartGoods cartGoods = new CartGoods();
        cartGoods.setUid(collect.getUid());
        cartGoods.setName(collect.getName());
        cartGoods.setImage(collect.getImage());
        cartGoodsService.saveGoods(cartGoods);
        collectService.delectOne(id);
        List<CartGoods> list = cartGoodsService.findAll(uid);
        mv.addObject("cartGoods",list);
        mv.setViewName("order/cart");
        return mv;
    }
}
