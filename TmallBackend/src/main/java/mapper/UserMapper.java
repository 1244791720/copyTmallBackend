package mapper;

import org.springframework.stereotype.Component;

import po.User;

@Component
public interface UserMapper {
	public void insertUser(User user);
}
