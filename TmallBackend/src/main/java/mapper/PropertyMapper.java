package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import po.Property;

public interface PropertyMapper {

	List<Property> getPropertysByCid(@Param("cid") int cid);
	
}
