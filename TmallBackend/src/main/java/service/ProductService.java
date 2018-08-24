package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.CategoryMapper;
import mapper.ProductMapper;
import po.Category;
import po.Product;
import util.MybatisUtil;

public class ProductService {
	public static List<Product> getAllProduct() {
		SqlSession  sq = MybatisUtil.openSession();
		ProductMapper cm = sq.getMapper(ProductMapper.class);
		
		List<Product> l = cm.getAllProduct();
		return l;
		
	}
	
	public static List<Product> getAllProductByCid(int cid) {
		SqlSession  sq = MybatisUtil.openSession();
		ProductMapper cm = sq.getMapper(ProductMapper.class);
		
		List<Product> l = cm.getAllProductByCid(cid);
		return l;
		
	}
}
