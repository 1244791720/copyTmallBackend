package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import po.ShoppingCart;
import service.ShoppingCartService;

@Controller
@RequestMapping("/order")
public class OrderController {
	/**
	 * 添加商品到购物车
	 * @param request
	 * @param session
	 * @param cartNum
	 * @param uid
	 * @param pid
	 * @return 请求页面
	 */
	@RequestMapping("/addCart{num}+{uid}+{pid}")
	public String addCart(HttpServletRequest request, HttpSession session, @PathVariable("num") int cartNum,
			@PathVariable("uid") int uid, @PathVariable("pid") int pid) {
		//获取请求页面url
		String url = request.getHeader("Referer");
		//添加购物车
		ShoppingCart sc = new ShoppingCart(uid, pid, cartNum);
		ShoppingCartService.addShoppingCart(sc);
		session.setAttribute("addSuccess", "true");
		return "redirect:" + url;
	}
	
	@RequestMapping("/buyCart")
	public String buyCart() {
		
		return "redirect:../settlementPage.jsp";
		
	}
}
