package service;

import com.coolGuy.pojo.Goods;
import com.coolGuy.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Author Zhuang
 * @Data 2021/1/25 17:00
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class TestIndexContriller {

    @Autowired
    private GoodsService goodsService;

    @Test
    public void testPagehelper(){
        PageHelper.startPage(1,10);
        List<Goods> list = goodsService.findByName("手机");
        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        System.out.println(pageInfo);
    }

    @Test
    public void testFindBrand(){
        List<String> list = goodsService.findBrand("手机");
        for(String brand:list){
            System.out.println(brand);
        }
    }
}
