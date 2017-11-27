package shoeshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import shoeshop.entities.ProductSize;
import shoeshop.services.ShoppingCart;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
	
	@Autowired
	ShoppingCart cart;
	
	@RequestMapping("view")
	public String view(ModelMap model) {
		model.addAttribute("cart", cart);
		return "user/home/shopping-cart/view";
	}
	
	@RequestMapping("add")
	@ResponseBody
	public String add(@RequestParam("id") Integer id) {
		cart.add(id);
		String json = String.format("[%d, %.2f]", cart.getCount(), cart.getAmount());
		return json;
	}
	
	@RequestMapping("remove")
	@ResponseBody
	public String remove(@RequestParam("id") Integer id) {
		cart.remove(id);
		String json = String.format("[%d, %.2f]", cart.getCount(), cart.getAmount());
		return json;
	}
	
	@RequestMapping("update")
	@ResponseBody
	public String update(@RequestParam("id") Integer id,
			@RequestParam("qty") Integer newQuantity) {
		cart.update(id, newQuantity);
		ProductSize p = cart.getItem(id);
		double itemAmount = p.getQuantity()*p.getProduct().getPrice()*(1 - (p.getProduct().getDiscount()*1.0/100));
		String json = String.format("[%d, %.2f, %.2f]", cart.getCount(), cart.getAmount(), itemAmount);
		return json;
	}
	
	@RequestMapping("clear")
	public String clear(ModelMap model) {
		cart.clear();
		model.addAttribute("cart", cart);
		return "user/shopping-cart/view";
	}
	
}
