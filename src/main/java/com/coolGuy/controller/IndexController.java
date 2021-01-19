package com.coolGuy.controller;

import com.coolGuy.pojo.Goods;
import com.coolGuy.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/16 18:44
 */
@Controller
@RequestMapping("/search")
public class IndexController {

    @Autowired
    private GoodsService goodsService;

    //条件分页
    @RequestMapping("/complete")
    public String complete(@RequestParam("complete") String complete,
                           @RequestParam(required = true ,defaultValue = "1") Integer page,
                           Model model){
        PageHelper.startPage(page,10);
        List<Goods> list = goodsService.findByName(complete);
        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        int totalCount = goodsService.countTotal(complete);
        int totalPage = (totalCount % 10)  == 0 ? totalCount/10 : (totalCount/10) + 1;
        if (page <= 1){
            page = 1;
        }
        if(page >= totalPage-1){
            page = totalPage;
        }
        model.addAttribute("page",page);
        model.addAttribute("complete",complete);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("totalPage",totalPage);
        return "forward:/WEB-INF/pages/order/search.jsp";
    }

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "/order/index";
    }
}