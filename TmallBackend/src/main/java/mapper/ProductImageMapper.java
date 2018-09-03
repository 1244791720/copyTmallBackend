package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import po.ProductImage;

public interface ProductImageMapper {
	public List<ProductImage> getAllProductImage();

	public List<ProductImage> getProductImagesByPid(@Param("pid") int pid);
}
