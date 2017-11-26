package shoeshop.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import shoeshop.entities.Product;
import shoeshop.services.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value= {"","index"})
	public String index() {
		return "user/home/index";
	}	
	
	@RequestMapping("category/men")
	public String categoryMen() {
		return "user/landing/product/product-men";
	}	
	
	@RequestMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		model.addAttribute("prod", productService.get(id));
		return "user/landing/product/detail";
	}	
	
	@ModelAttribute("latests")
	public List<Product> getListLatests() {
		return productService.listLastest();
	}
	
	@ModelAttribute("random")
	public List<Product> getListRand() {
		return productService.listRand();
	}
	
	@ModelAttribute("random2")
	public List<Product> getListRand2() {
		return productService.listRand2();
	}
	
	@ModelAttribute("special")
	public List<Product> getSpecial() {
		return productService.listSpecial();
	}
	
	@ModelAttribute("menProds")
	public List<Product> getMenProduct() {
		return productService.listMenProduct();
	}
}
