package mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import po.User;

@Component
public interface UserMapper {
	public void insertUser(User user);
	
	public List<User> getAllUser();
}
