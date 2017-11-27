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
	
	@RequestMapping("brand/{id}")
	public String productByBrand(Model model,
			@PathVariable("id") int id) {
		model.addAttribute("prods", productService.listByBrand(id));
		return "user/home/product/product-by-filter";
	}		
	
	@RequestMapping("category/men")
	public String categoryMen(Model model) {
		model.addAttribute("prods", productService.listMenProduct());
		return "user/home/product/product-by-filter";
	}	
	
	@RequestMapping("category/women")
	public String categoryWomen(Model model) {
		model.addAttribute("prods", productService.listWomenProduct());		
		return "user/home/product/product-by-filter";
	}
	
	@RequestMapping("category/kid")
	public String categoryKid(Model model) {		
		model.addAttribute("prods", productService.listKidProduct());	
		return "user/home/product/product-by-filter";
	}	
	
	@RequestMapping("category/sport")
	public String categorySport(Model model) {		
		model.addAttribute("prods", productService.listSportProduct());	
		return "user/home/product/product-by-filter";
	}		
	
	@RequestMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		model.addAttribute("prod", productService.get(id));
		return "user/home/product/detail";
	}	
	
}
