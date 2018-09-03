package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	@RequestMapping("/addCart")
	public String addCart(HttpServletRequest request, HttpSession session) {
		String url = request.getHeader("Referer");
		System.out.println("Ìí¼Ó³É¹¦£¡");
		session.setAttribute("addSuccess", "true");
		return "redirect:" + url;
	}
	
	@RequestMapping("/buyCart")
	public String buyCart() {
		
		return "redirect:../settlementPage.jsp";
		
	}
}
