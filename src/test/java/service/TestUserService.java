package service;

import com.coolGuy.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @Author Zhuang
 * @Data 2021/1/15 11:51
 */
public class TestUserService {

    @Test
    public void testFindAll() {
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService userService =(UserService)ac.getBean("userService");
        userService.findAll();
    }
}
