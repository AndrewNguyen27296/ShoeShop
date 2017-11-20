package shoeshop.admin.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shoeshop.entities.Master;
import shoeshop.services.MasterService;

@Controller
@Transactional
@RequestMapping("admin")
public class AdminHomeController {

	@Autowired
	MasterService masterService;
	
	@RequestMapping(value= {"", "login"})
	public String login(ModelMap model) {		
		return "admin/landing/login";
	}
	@RequestMapping(value= "login", method=RequestMethod.POST)
	public String login(ModelMap model,
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			HttpSession httpSession) {
		try {
			Master master = masterService.get(id);
			if(master.getPassword().equals(password)) {
				httpSession.setAttribute("master", master);
				return "redirect:/admin/dashboard/";
			}
			else {
				model.addAttribute("message", "Typed wrong password");
			}			
		}
		catch (Exception e) {
			model.addAttribute("message", "Typed wrong username.");
		}
		return "admin/landing/login";
	}
	
}
