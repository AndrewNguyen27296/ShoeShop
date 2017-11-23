package shoeshop.admin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shoeshop.entities.Brand;
import shoeshop.entities.Material;
import shoeshop.services.BrandService;

@Controller
@RequestMapping("admin/dashboard")
public class AdminBrandController {
	@Autowired
	BrandService brandService;
	
	@RequestMapping("list/brands")
	public String listBrands(ModelMap modelMap) {
		return "admin/dashboard/brand/list";
	}

	@RequestMapping("add/brand")
	public String add(ModelMap model) {
		model.addAttribute("brand", new Brand());
		return "admin/dashboard/brand/add";
	}

	@RequestMapping(value = "add/brand", method = RequestMethod.POST)
	public String add(ModelMap model, @ModelAttribute("cate") Brand brand) {
		try {
			brandService.insert(brand);
			model.addAttribute("brand", new Brand());
			model.addAttribute("success", "Add brand successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Add brand failed. Please try again !");
		}
		return "admin/dashboard/brand/add";
	}

	@RequestMapping("edit/brand/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		model.addAttribute("brand", brandService.get(id));
		return "admin/dashboard/brand/edit";
	}

	@RequestMapping(value = "edit/brand", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("cate") Brand brand) {
		try {
			brandService.update(brand);
			model.addAttribute("brand", brand);
			model.addAttribute("success", "Update brand successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Update brand failed. Please try again !");
		}
		return "admin/dashboard/brand/edit";
	}

	@RequestMapping(value = "delete/brand/{id}")
	public String delete(ModelMap model, 
			@PathVariable("id") Integer id) {
		Brand brand = new Brand();
		brand.setId(id);
		brandService.delete(brand);
		return "redirect:/admin/dashboard/list/brands/";
	}
	
	@ModelAttribute("brands")
	public List<Brand> getListBrands() {
		return brandService.list();
	}
}
