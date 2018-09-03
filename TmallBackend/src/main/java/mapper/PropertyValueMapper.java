package mapper;

import org.apache.ibatis.annotations.Param;

import po.PropertyValue;

public interface PropertyValueMapper {

	PropertyValue getPropertyValueByPtidAndPid(@Param("ptid") int ptid, @Param("pid") int pid);
	
	
}
