package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import po.Category;

public interface CategoryMapper {
	public List<Category> getAllCategory();

	public Category getCategoryByPid(@Param("pid") int pid);
}
