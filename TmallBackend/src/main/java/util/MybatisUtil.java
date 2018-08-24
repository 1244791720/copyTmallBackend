package util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MybatisUtil {
	private static SqlSessionFactory sqlSessionFactory = null;
	private static SqlSession sqlSession = null;
	
	private static SqlSessionFactory getSqlSessionFactory() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		SqlSessionFactory sqlSessionFactory = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
		return sqlSessionFactory;
	}
	
	public static SqlSession openSession() {
		sqlSessionFactory = getSqlSessionFactory();
		if(sqlSession == null) {
			sqlSession = sqlSessionFactory.openSession();
		}
		return sqlSession;
	}
	

}
