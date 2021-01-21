package com.coolGuy.controller;

import com.coolGuy.pojo.Collect;
import com.coolGuy.pojo.Goods;
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

    //搜索表格跳去收藏
    @RequestMapping("/centerCollect/{id}/{userId}")
    public ModelAndView toCollect(@PathVariable(value = "id") int id,
                                  @PathVariable(value = "userId") int userId){
        ModelAndView mv = new ModelAndView();
        Goods goods = goodsService.findById(id);
        Collect collect = new Collect();
        collect.setUid(userId);
        collect.setName(goods.getName());
        collect.setParentId(goods.getParentId());
        collect.setTemplateId(goods.getTemplateId());
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
}
