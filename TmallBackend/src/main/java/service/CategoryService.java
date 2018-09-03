package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.CategoryMapper;
import po.Category;
import util.MybatisUtil;

public class CategoryService {
	
	public static List<Category> getAllCategory() {
		SqlSession  sq = MybatisUtil.openSession();
		CategoryMapper cm = sq.getMapper(CategoryMapper.class);
		
		List<Category> l = cm.getAllCategory();
		return l;
		
	}
	
	
	public static Category getCategoryByPid(int pid) {
		SqlSession  sq = MybatisUtil.openSession();
		CategoryMapper cm = sq.getMapper(CategoryMapper.class);
		
		Category l = cm.getCategoryByPid(pid);
		return l;
		
	}
	
}
