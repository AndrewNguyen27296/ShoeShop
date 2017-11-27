package shoeshop.controllers;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shoeshop.entities.Customer;
import shoeshop.entities.Order;
import shoeshop.entities.ProductSize;
import shoeshop.services.OrderService;


@Controller
@RequestMapping("order")
public class OrderController {

	@Autowired
	shoeshop.services.ShoppingCart cart;
	@Autowired
	OrderService orderService;
	
	@RequestMapping("checkout")
	public String checkout(ModelMap model, HttpSession httpSession) {
		Customer user= (Customer)httpSession.getAttribute("user");
		Order order = new Order();
		order.setAmount(cart.getAmount());
		order.setOrderDate(new Date());
		
		/// Ngay can hang se sau ngay dat 2 ngay
		Date date = new Date();
		date.setDate(date.getDate()+ 2);
		order.setRequireDate(date);
		
		order.setReceiver(user.getFullName());
		order.setCustomer(user);
		
		model.addAttribute("order", order);
		return "user/home/order/checkout";
	}
	
	@RequestMapping(value="checkout",method=RequestMethod.POST)
	public String checkout(ModelMap model, HttpSession httpSession,
			@ModelAttribute("order") Order order) {
		try {
			orderService.purchase(order,cart);
			cart.clear();
			model.addAttribute("message","Đặt hàng thành công.");
			return "redirect:/order/detail/"+order.getId()+"/";
		}
		catch (Exception e) {
			model.addAttribute("message","Đặt hàng thất bại.");
			return "user/home/order/checkout";
		}
	}
	 
	@RequestMapping("detail/{id}")
	public String detail(ModelMap model, @PathVariable("id") Integer id) {
		Order order = orderService.get(id);
		model.addAttribute("order", order);
		return "user/home/order/detail";
	}
	
	@RequestMapping("list")
	public String list(ModelMap model, HttpSession httpSession) {
		Customer user = (Customer)httpSession.getAttribute("user");
		List<Order> list = orderService.getOrderListByUser(user);
		model.addAttribute("orders", list);
		return "user/home/order/list";
	}
	
	@RequestMapping("items")
	public String items(ModelMap model, HttpSession httpSession) {
		Customer user = (Customer)httpSession.getAttribute("user");
		List<ProductSize> list = orderService.getPurchaseItems(user);
		model.addAttribute("prods", list);
		return "user/home/product/list";
	}
	
}
