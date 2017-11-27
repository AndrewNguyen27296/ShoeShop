package shoeshop.admin.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shoeshop.services.OrderDetailService;



@Controller
@RequestMapping("admin/dashboard/revenue")
public class AdminRevenueController {

	@Autowired
	OrderDetailService orderDetailService;
	
	@RequestMapping("by/product")
	public String byProduct(Model model) {
		List<Object[]> list = orderDetailService.revenueByProduct();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-product";
	}
	
	@RequestMapping("by/category")
	public String byCategory(Model model) {
		List<Object[]> list = orderDetailService.revenueByCategory();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-category";
	}
	
	@RequestMapping("by/brand")
	public String byBrand(Model model) {
		List<Object[]> list = orderDetailService.revenueByBrand();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-brand";
	}
	
	@RequestMapping("by/customer")
	public String byCustomer(Model model) {
		List<Object[]> list = orderDetailService.revenueByCustomer();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-customer";
	}
	
	@RequestMapping("by/year")
	public String byYear(Model model) {
		List<Object[]> list = orderDetailService.revenueByYear();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-year";
	}
	
	@RequestMapping("by/quarter")
	public String byQuarter(Model model) {
		List<Object[]> list = orderDetailService.revenueByQuarter();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-quarter";
	}
	
	@RequestMapping("by/month")
	public String byMonth(Model model) {
		List<Object[]> list = orderDetailService.revenueByMonth();
		model.addAttribute("items", list);
		return "admin/dashboard/revenue/by-month";
	}
}
