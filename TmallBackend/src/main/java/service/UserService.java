package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.ProductMapper;
import mapper.UserMapper;
import po.Product;
import po.User;
import util.MybatisUtil;

public class UserService {
	
	public static List<User> getAllUser() {
		SqlSession  sq = MybatisUtil.openSession();
		UserMapper cm = sq.getMapper(UserMapper.class);
		List<User> l = cm.getAllUser();
		return l;
	}
	
	public static void addUser(User user) {
		SqlSession  sq = MybatisUtil.openSession();
		UserMapper cm = sq.getMapper(UserMapper.class);
		cm.insertUser(user);
		sq.commit();
	}
}
