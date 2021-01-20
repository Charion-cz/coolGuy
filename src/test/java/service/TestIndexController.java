package service;

import com.coolGuy.pojo.CartGoods;
import com.coolGuy.pojo.Goods;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;


/**
 * @Author Zhuang
 * @Data 2021/1/18 12:09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class TestIndexController {

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CartGoodsService cartGoodsService;

    @Test
    public void testFindById(){
        int id = 44;
        Goods goods = goodsService.findById(id);
        System.out.println(goods);
    }

    @Test
    public void testFindByName(){
        String name = "手机";
        List<Goods> list = goodsService.findByName(name);

        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        PageHelper.startPage(1,5);
        long pageNum = pageInfo.getPages();
        System.out.println(pageInfo);
        System.out.println(pageNum);
    }

    @Test
    public void testCountTotal(){
        String name = "手机";
        int total = goodsService.countTotal(name);
        System.out.println(total);
    }

    @Test
    public void TestFindAll(){
        List<CartGoods> list = cartGoodsService.findAll();
        for (CartGoods cartGoods:list){
            System.out.println(cartGoods);
        }
    }

    @Test
    public void TestFindByIds(){
        List<Integer> list = new ArrayList<>();
        list.add(2);
        list.add(1);
        List<CartGoods> lists = cartGoodsService.findAllByIds(list);
        for(CartGoods cartGoods:lists){
            System.out.println(cartGoods);
        }
    }
}
