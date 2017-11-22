package shoeshop.admin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shoeshop.entities.Category;
import shoeshop.services.CategoryService;

@Controller
@RequestMapping("admin/dashboard")
public class AdminCategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping("list/categories")
	public String listCategories(ModelMap modelMap) {
		return "admin/dashboard/category/list";
	}
	
	@RequestMapping("add/category")
	public String add(ModelMap model) {
		model.addAttribute("cate", new Category());
		return "admin/dashboard/category/add";
	}

	@RequestMapping(value = "add/category", method = RequestMethod.POST)
	public String add(ModelMap model, @ModelAttribute("cate") Category category) {
		try {
			categoryService.insert(category);
			model.addAttribute("cate", new Category());
			model.addAttribute("success", "Add category successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Add category failed. Please try again !");
		}
		return "admin/dashboard/category/add";
	}

	@RequestMapping("edit/category/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		model.addAttribute("cate", categoryService.get(id));
		return "admin/dashboard/category/edit";
	}

	@RequestMapping(value = "edit/category", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("cate") Category category) {
		try {
			categoryService.update(category);
			model.addAttribute("cate", category);
			model.addAttribute("success", "Update category successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Update category failed. Please try again !");
		}
		return "admin/dashboard/category/edit";
	}

	@RequestMapping(value = "delete/category/{id}")
	public String delete(ModelMap model, 
			@PathVariable("id") Integer id) {
		Category category = new Category();
		category.setId(id);
		categoryService.delete(category);
		return "redirect:/admin/dashboard/list/categories/";
	}
	
	@ModelAttribute("cates")
	public List<Category> getListCategories() {
		return categoryService.list();
	}
}
