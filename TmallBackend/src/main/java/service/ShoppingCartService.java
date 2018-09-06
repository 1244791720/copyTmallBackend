package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import mapper.ShoppingCartMapper;
import po.ShoppingCart;
import util.MybatisUtil;

@Service
public class ShoppingCartService {
	public static void addShoppingCart(ShoppingCart shoppingCart) {
		SqlSession  sq = MybatisUtil.openSession();
		ShoppingCartMapper cm = sq.getMapper(ShoppingCartMapper.class);
		
		cm.addShoppingCart(shoppingCart);
		sq.commit();
		
	}
	public static int getUserAddShopingCartNum(int uid) {
		SqlSession  sq = MybatisUtil.openSession();
		ShoppingCartMapper cm = sq.getMapper(ShoppingCartMapper.class);
		
		List<ShoppingCart> l = cm.getAllShoppingCartByUid(uid);
		int num = 0;
		for(ShoppingCart s : l) {
			num++;
		}
		sq.commit();
		return num;
		
	}
	
	public static List<ShoppingCart> getAllShoppingCart(int uid) {
		SqlSession  sq = MybatisUtil.openSession();
		ShoppingCartMapper cm = sq.getMapper(ShoppingCartMapper.class);

		return cm.getAllShoppingCartByUid(uid);
		
	}
	
	
	
}
