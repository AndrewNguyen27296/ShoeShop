package shoeshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import shoeshop.services.ProductService;

@Controller
public class ProductHomeController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("category/men")
	public String categoryMen() {
		return "user/home/product/product-men";
	}	
	
	@RequestMapping("category/women")
	public String categoryWomen() {
		return "user/home/product/product-women";
	}
	
	@RequestMapping("category/kid")
	public String categoryKid() {
		return "user/home/product/product-kid";
	}	
	
	@RequestMapping("category/sport")
	public String categorySport() {
		return "user/home/product/product-sport";
	}		
	
	@RequestMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		model.addAttribute("prod", productService.get(id));
		return "user/home/product/detail";
	}	
	
}
