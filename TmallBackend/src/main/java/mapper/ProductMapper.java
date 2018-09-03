package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import po.Product;

public interface ProductMapper {
	public List<Product> getAllProduct();
	
	public List<Product> getAllProductByCid(int cid);
	
	public Product getProductById(@Param("pid") int pid);
}
