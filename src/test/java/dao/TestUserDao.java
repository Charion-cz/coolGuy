package dao;

import com.coolGuy.dao.UserDao;
import com.coolGuy.pojo.User;
import com.coolGuy.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

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
    public void testFindAll()  {
        List<User> list = userService.findAll();
        for (User user:list){
            System.out.println(user);
        }
    }

    @Test
    public void testSaveUser() {
        User user = new User();
        user.setName("Acher");
        user.setAge(26);
        user.setEmail("test7@baomidou.com");
        userService.saveUser(user);
    }
}
