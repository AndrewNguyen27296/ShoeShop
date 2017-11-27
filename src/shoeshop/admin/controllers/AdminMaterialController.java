package shoeshop.admin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shoeshop.entities.Material;
import shoeshop.entities.Product;
import shoeshop.services.MaterialService;

@Controller
@RequestMapping("admin/dashboard")
public class AdminMaterialController {
	@Autowired
	MaterialService materialService;

	@RequestMapping("list/materials")
	public String listMaterials(ModelMap modelMap) {
		return "admin/dashboard/material/list";
	}
	
	@RequestMapping("add/material")
	public String add(ModelMap model) {
		model.addAttribute("mate", new Material());
		return "admin/dashboard/material/add";
	}

	@RequestMapping(value = "add/material", method = RequestMethod.POST)
	public String add(ModelMap model, @ModelAttribute("mate") Material material) {
		try {
			materialService.insert(material);
			model.addAttribute("mate", new Material());
			model.addAttribute("success", "Add material successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Add material failed. Please try again !");
		}
		return "admin/dashboard/material/add";
	}

	@RequestMapping("edit/material/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		model.addAttribute("mate", materialService.get(id));
		return "admin/dashboard/material/edit";
	}

	@RequestMapping(value = "edit/material", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("mate") Material material) {
		try {
			materialService.update(material);
			model.addAttribute("mate", material);
			model.addAttribute("success", "Update material successfully.");
		} catch (Exception e) {
			model.addAttribute("error", "Update material failed. Please try again !");
		}
		return "admin/dashboard/material/edit";
	}

	@RequestMapping(value = "delete/material/{id}")
	public String delete(ModelMap model, 
			@PathVariable("id") Integer id) {
		Material material = new Material();
		material.setId(id);
		materialService.delete(material);
		return "redirect:/admin/dashboard/list/materials/";
	}
	
	@ModelAttribute("mates")
	public List<Material> getListMaterials() {
		return materialService.list();
	}
}
