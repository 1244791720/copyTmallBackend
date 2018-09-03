package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	@RequestMapping(value="/foreproduct/{pid}", method=RequestMethod.GET)
	public String foreproduct(@PathVariable("pid") String pid, HttpSession session) {
		session.setAttribute("pid", pid);
		return "redirect:/productPage.jsp";
	}
}
