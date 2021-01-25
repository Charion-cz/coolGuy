package service;

import com.coolGuy.pojo.Collect;
import com.coolGuy.pojo.Goods;
import com.coolGuy.service.CollectService;
import com.coolGuy.service.GoodsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author Zhuang
 * @Data 2021/1/25 21:10
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class TestCollectController {

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CollectService collectService;

    @Test
    public void testSaveOne(){
        String id="100000015158";
        Goods goods = goodsService.findById(id);
        Collect collect = new Collect();
        int uid = 4;
        collect.setUid(uid);
        collect.setName(goods.getName());
        collect.setImage(goods.getImage());
        collectService.saveOne(collect);
    }
}
