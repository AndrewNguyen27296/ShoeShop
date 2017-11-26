package shoeshop.controllers;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shoeshop.entities.Customer;
import shoeshop.services.CustomerService;

@Controller
@RequestMapping("account")
public class AccountController {
	@Autowired
	CustomerService customerService;
	
	/**
	 * Đăng nhập
	 * */
	@RequestMapping("login")
	public String login() {
		return "user/account/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model,
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam(value="remember", defaultValue="false") Boolean remember,
			HttpSession httpSession,
			HttpServletResponse response) {
		
		try {
			Customer user = customerService.get(id);
			if (user.getActivated() == false) {
				model.addAttribute("message", "Tài khoản chưa được kích hoạt");
			}
			else if (user.getPassword().equals(password)) {
				httpSession.setAttribute("user", user);
				model.addAttribute("message", "Đăng nhập thành công");
				
				Cookie ckId = new Cookie("uid", id);
				Cookie ckPw = new Cookie("pwd", password);
				//Kiểm tra người dùng có chọn nhớ tk, mật khẩu ko
				//Nếu có thì tạo cookie lưu lại
				if (remember == true) {
					ckId.setMaxAge(5*24*60*60);
					ckPw.setMaxAge(5*24*60*60);
				}
				//Nếu ko chọn thì xóa cookie
				else {
					ckId.setMaxAge(0);
					ckPw.setMaxAge(0);
				}
				//Lưu cookie trên máy client
				response.addCookie(ckId);
				response.addCookie(ckPw);
				
				//Quay lại trang truy cập trước đo
				String url = (String) httpSession.getAttribute("BackUrl");
				if (url != null) {
					return "redirect:" + url;
				}
			}
			else {
				model.addAttribute("message", "Sai mật khẩu");
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Sai tên đăng nhập");
			
		}
		return "user/account/login";
	}
}
