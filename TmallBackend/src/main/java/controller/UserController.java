package controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import po.User;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, HttpSession session, Map<String, String> map) throws IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Boolean enableLogin = false;
		Boolean hasUser = false;
		List<User> list = UserService.getAllUser();
		
		for (User u : list) {
			System.out.println(name);
			System.out.println(u.getName().equals(name));
			hasUser = u.getName().equals(name) && u.getPassword().equals(password);
			if (hasUser) {
				System.out.println("dsad");
				enableLogin = true;
				break;
			}
		}
		if (enableLogin) {
			session.setAttribute("enableLogin", "true");
			session.setAttribute("name", name);
			return "redirect:/homepage.jsp";
		}
		map.put("errorMessage", "登录错误");
		return "error";
	}
	
	@RequestMapping("loginOut")
	public String loginOut(HttpSession session) {
		session.removeAttribute("enableLogin");
		return "redirect:/homepage.jsp";
	}
	
	@RequestMapping("/registSuccess")
	public void registSuccess(HttpServletRequest requerst, HttpServletResponse response, Map<String ,String> map) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		String name = requerst.getParameter("name");
		String password = requerst.getParameter("password");
		Boolean flag = true;
		
		List<User> list = UserService.getAllUser();
		for (User u : list) {
			if (u.getName().equals(name)) {
				pw.write("用户名重复");
				flag = false;
				break;
			}
		}
		if (flag) {
			User user = new User(name, password);
			UserService.addUser(user);
		}
		pw.flush();

	}
}
