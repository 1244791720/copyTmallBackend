package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import po.Review;
import po.User;

@Component
public interface UserMapper {
	public void insertUser(User user);
	
	public List<User> getAllUser();

	public User getUserById(@Param("uid") int uid);

	public User getUserByUsername(@Param("username") String username);
}
