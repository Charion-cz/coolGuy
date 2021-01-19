package dao;

import com.coolGuy.pojo.User;
import com.coolGuy.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author Zhuang
 * @Data 2021/1/15 13:51
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class TestUserDao {

    @Autowired
    private UserService userService;

    @Test
    public void testLogin(){
        User user = userService.findByNameAndPwd("tch1","12138");
        System.out.println(user);
    }

}
