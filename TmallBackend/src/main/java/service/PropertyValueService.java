package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.PropertyMapper;
import mapper.PropertyValueMapper;
import po.Property;
import po.PropertyValue;
import util.MybatisUtil;

public class PropertyValueService {
	public static PropertyValue getPropertyValueByPtidAndPid(int ptid, int pid) {
		SqlSession  sq = MybatisUtil.openSession();
		PropertyValueMapper cm = sq.getMapper(PropertyValueMapper.class);
		
		PropertyValue l = cm.getPropertyValueByPtidAndPid(ptid, pid);
		return l;
		
	}
}
