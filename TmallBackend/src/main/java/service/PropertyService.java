package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.ProductMapper;
import mapper.PropertyMapper;
import po.Product;
import po.Property;
import util.MybatisUtil;

public class PropertyService {
	public static List<Property> getPropertysByCid(int cid) {
		SqlSession  sq = MybatisUtil.openSession();
		PropertyMapper cm = sq.getMapper(PropertyMapper.class);
		
		List<Property> l = cm.getPropertysByCid(cid);
		return l;
		
	}
}
