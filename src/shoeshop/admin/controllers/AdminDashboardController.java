package shoeshop.admin.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shoeshop.entities.Category;
import shoeshop.entities.Master;
import shoeshop.entities.Product;
import shoeshop.services.CategoryService;
import shoeshop.services.MasterService;
import shoeshop.services.ProductService;

@Controller
@RequestMapping("admin/dashboard")
public class AdminDashboardController {

	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	MasterService masterService;

	@RequestMapping("")
	public String index() {
		return "admin/dashboard/index";
	}

	@RequestMapping("list/products")
	public String listProduct(ModelMap modelMap) {
		return "admin/dashboard/product/list";
	}

	@RequestMapping("list/categories")
	public String listCategories(ModelMap modelMap) {
		return "admin/dashboard/category/list";
	}

	@RequestMapping("edit/profile")
	public String editProfiles(ModelMap modelMap, HttpSession httpSession) {
		modelMap.addAttribute("master", httpSession.getAttribute("master"));
		return "admin/dashboard/account/edit";
	}

	@RequestMapping(value = "edit/profile", method = RequestMethod.POST)
	public String editProfiles(ModelMap modelMap, HttpSession httpSession, @ModelAttribute("master") Master master) {
		try {
			masterService.update(master);
			httpSession.setAttribute("master", master);
			modelMap.addAttribute("success", "Edit profile successfully.");
		} catch (Exception e) {
			modelMap.addAttribute("error", "Edit profile failed. Please do again ?");
		}
		return "admin/dashboard/account/edit";
	}

	@RequestMapping("change/password")
	public String changePassword(ModelMap modelMap) {
		return "admin/dashboard/account/change";
	}

	@RequestMapping(value = "change/password", method = RequestMethod.POST)
	public String changePassword(ModelMap modelMap, 
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam("password1") String password1,
			@RequestParam("password2") String password2) {
		if (password1.equals(password2)) {
			try {
				Master master = masterService.get(id);
				if (!master.getPassword().equals(password)) {
					modelMap.addAttribute("message", "Typed wrong current password.");
				} else {
					master.setPassword(password1);
					masterService.update(master);
					modelMap.addAttribute("message", "Change password successfully.");
				}
			} catch (Exception e) {
				modelMap.addAttribute("message", "Typed wrong username.");
			}
		} else {
			modelMap.addAttribute("message", "Confirm password not matched.");
		}

		return "admin/dashboard/account/change";
	}

	@RequestMapping("logout")
	public String logout(ModelMap modelMap, HttpSession httpSession) {
		httpSession.removeAttribute("master");
		return "redirect:/admin/";
	}

	@ModelAttribute("prods")
	public List<Product> getListProducts() {
		return productService.list();
	}

	@ModelAttribute("cates")
	public List<Category> getListCategories() {
		return categoryService.list();
	}
}
