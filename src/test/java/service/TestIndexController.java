package service;

import com.coolGuy.pojo.CartGoods;
import com.coolGuy.pojo.Goods;
import com.coolGuy.pojo.Order;
import com.coolGuy.service.CartGoodsService;
import com.coolGuy.service.GoodsService;
import com.coolGuy.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Iterator;
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
    @Autowired
    private OrderService orderService;

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

    @Test
    public void TestSaveOrder(){
        List<Order> list = new ArrayList<>();
        Order order1 = new Order();
        order1.setUid(1);
        order1.setName("aaa");
        order1.setParentId(11);
        order1.setTemplateId(11);
        Order order2 = new Order();
        order2.setUid(1);
        order2.setName("bbb");
        order2.setParentId(22);
        order2.setTemplateId(22);
        Order order3 = new Order();
        order3.setUid(2);
        order3.setName("ccc");
        order3.setParentId(33);
        order3.setTemplateId(33);
        list.add(order1);
        list.add(order2);
        list.add(order3);
        orderService.SaveOrder(list);

    }
}
