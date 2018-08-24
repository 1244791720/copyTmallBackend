package mapper;

import java.util.List;

import po.Product;

public interface ProductMapper {
	public List<Product> getAllProduct();
	
	public List<Product> getAllProductByCid(int cid);
}
