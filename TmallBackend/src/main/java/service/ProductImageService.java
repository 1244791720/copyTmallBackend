package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.CategoryMapper;
import mapper.ProductImageMapper;
import po.Category;
import po.ProductImage;
import util.MybatisUtil;

public class ProductImageService {
	
	public static List<ProductImage> getAllProductImage() {
		SqlSession  sq = MybatisUtil.openSession();
		ProductImageMapper cm = sq.getMapper(ProductImageMapper.class);
		
		List<ProductImage> l = cm.getAllProductImage();
		return l;
		
	}
	
	public static List<ProductImage> getProductImagesByPid(int pid) {
		SqlSession  sq = MybatisUtil.openSession();
		ProductImageMapper cm = sq.getMapper(ProductImageMapper.class);
		
		List<ProductImage> l = cm.getProductImagesByPid(pid);
		return l;
		
	}
}
