package shoeshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
	
	@RequestMapping("view")
	public String index() {
		
		return "user/home/shopping-cart/view";
	}
	
	@RequestMapping("checkout")
	public String checkout() {
		
		return "user/home/shopping-cart/view";
	}
	
}
