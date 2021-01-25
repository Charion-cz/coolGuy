package com.coolGuy.controller;

import com.coolGuy.pojo.Goods;
import com.coolGuy.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jdk.nashorn.internal.runtime.linker.LinkerCallSite;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView complete(@RequestParam("complete") String complete,
                                 @RequestParam(defaultValue = "1") Integer page,
                                 ModelAndView mv){
        //设置分页的页面和每页数据数量
        PageHelper.startPage(page,10);
        //查出数据
        List<Goods> list = goodsService.findByName(complete);
        //调用插件进行分页
        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        //查出在此条件下的所有数据总数
        int totalCount = goodsService.countTotal(complete);
        //继续页码判断
        int totalPage = (totalCount % 10)  == 0 ? totalCount/10 : (totalCount/10) + 1;
        if (page <= 1){
            page = 1;
        }
        if(page >= totalPage-1){
            page = totalPage;
        }
        List<String> brands = goodsService.findBrand(complete);
        //将二级分类传到前台
        mv.addObject("brand",brands);
        //将页码传到前台
        mv.addObject("page",page);
        //将条件传到前台
        mv.addObject("complete",complete);
        //将分页得到的数据传到前台
        mv.addObject("pageInfo",pageInfo);
        //将此条件的分页总数传到前台
        mv.addObject("totalPage",totalPage);
        mv.setViewName("order/search");
        return mv;
    }

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "/order/index";
    }
}