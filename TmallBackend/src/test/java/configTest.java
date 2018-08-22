import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import mapper.CategoryMapper;
import mapper.UserMapper;
import po.Category;
import po.User;



public class configTest {

	private void testPo(Object j) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		Object o = ac.getBean(j.getClass());
		System.out.println(o);
	}
	
	@Test
	public void testSpring() {
//		Category o = new Category();
//		Order o = new Order();
//		Orderitem o = new Orderitem();
//		Product o = new Product();
//		ProductImage o = new ProductImage();
//		Property o = new Property();
//		PropertyValue o = new PropertyValue();
//		Review o = new Review();
		User o = new User();
		testPo(o);
	}
	
	@Test
	public void testMybatis() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
//		UserMapper um = sqlSession.getMapper(UserMapper.class);
//		User u = new User("Jue", "huangzujue123");
//		um.insertUser(u);
		CategoryMapper cm = sqlSession.getMapper(CategoryMapper.class);
		List<Category> list = cm.getAllCategory();
		System.out.println(list);
		sqlSession.commit();
		sqlSession.close();
		
	}

}
