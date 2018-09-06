package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import po.ShoppingCart;

public interface ShoppingCartMapper {
	public void addShoppingCart(ShoppingCart shoppingCart);

	public List<ShoppingCart> getAllShoppingCartByUid(@Param("uid") int uid);
	
	
}
