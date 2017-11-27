package shoeshop.controllers;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import shoeshop.entities.Customer;
import shoeshop.services.CustomerService;
import shoeshop.services.MailerService;

@Controller
@RequestMapping("account")
public class AccountController {
	
	@Autowired
	MailerService mailerService;
	@Autowired
	CustomerService customerService;
	@Autowired
	ServletContext app;
	
	/**
	 * Dang nhap he thong
	 * */
	@RequestMapping("login")
	public String login() {
		return "user/home/account/login";
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
				String url = (String) httpSession.getAttribute("backUrl");
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
		return "redirect:/";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "redirect:/";
	}

	@RequestMapping("register")
	public String register(Model model) {
		model.addAttribute("user", new Customer());
		return "user/home/account/register"; 
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String register(Model model,
					@ModelAttribute("user") Customer user, 
					@RequestParam("password1") String password1,
					@RequestParam("upphoto") MultipartFile photo,
					HttpServletRequest request)
	{				
		if(password1.equals(user.getPassword())) {
			try {		
				if(!photo.isEmpty()) {
					String filename = System.currentTimeMillis()+"-"+photo.getOriginalFilename();
					user.setPhoto(filename);
					/// Save photo into assets res on host
					String path = app.getRealPath("/assets/upload/customers/files/"+user.getPhoto());
					photo.transferTo(new File(path));
				}
				else {
					user.setPhoto("user.png");
				}
				user.setActivated(false);
				customerService.insert(user);
				model.addAttribute("message", "Đăng ký thành công");				
				try {					
					String url = request.getRequestURL().toString().replace("register", "activate/"+user.getId());
					String to = user.getEmail();
					String subject = "Welcome to ShoeShop Runner Sport Website";
					String body = "Click vào liên kết sau đây để kích hoạt tài khoản<hr>" +
							"<a href='"+ url +"'>Nhấn vào đây để kích hoạt</a>";
					mailerService.send(to, subject, body);
					model.addAttribute("message", "Vui lòng kiểm tra hộp thư để kích hoạt tài khoản");
				}
				catch (Exception e) {
					model.addAttribute("message", "Không thể gửi mail đến địa chỉ email của bạn");
				}
				
			}
			catch (Exception e) {
				model.addAttribute("message", "Đăng ký thất bại");
			}
		}
		else {
			model.addAttribute("message", "Mật khẩu xác nhận không đúng");
		}	
		return "user/home/account/register"; 
	}
	
	/**
	 * Kich hoat tai khoan
	 * */
	@RequestMapping("activate/{id}")
	public String activate(@PathVariable("id") String id) {
		Customer user = customerService.get(id);
		user.setActivated(true);		
		customerService.update(user);
		return "redirect:/";
	}
	
	@RequestMapping("forgot")
	public String forgot(Model model) {
		return "user/home/account/forgot";
	}
	
	@RequestMapping(value="forgot",method=RequestMethod.POST)
	public String forgot(Model model,
			@RequestParam("id") String id,
			@RequestParam("email") String email) {
		try {
			Customer user = customerService.get(id);
			if(email.equals(user.getEmail())) {
				/// Gui mat khau
				try {
					mailerService.send(email, "Forgot password", user.getPassword());
					model.addAttribute("message", "Đã gửi mật khẩu qua email");
				}
				catch (Exception e) {
					model.addAttribute("message", "Không gửi được email");
				}
			}
			else {
				model.addAttribute("message", "Sai email đã đăng ký");
			}
		}
		catch (Exception e) {
			model.addAttribute("message", "Tên đăng nhập không tồn tại");
		}
		return "user/home/account/forgot";
	}

	@RequestMapping("change")
	public String change(Model model) {
		return "user/home/account/change";
	}
	
	@RequestMapping(value="change",method=RequestMethod.POST)
	public String change(Model model,
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam("password1") String password1,
			@RequestParam("password2") String password2,
			HttpSession httpSession)
	{
		if(password1.equals(password2)) {
			try {
				Customer user = customerService.get(id);
				if(password.equals(user.getPassword())) {
					user.setPassword(password1);
					customerService.update(user);
					model.addAttribute("message", "Đổi mật khẩu thành công");
					httpSession.setAttribute("user", user);
				} 
				else {
					model.addAttribute("message", "Mật khẩu cũ không đúng");
				}
			}
			catch (Exception e) {
				model.addAttribute("message", "Sai tên đăng nhập");
			}
			
		}
		else {
			model.addAttribute("message", "Mật khẩu xác nhận không đúng");
		}
		
		return "user/home/account/change";
	}
	
	/**
	 * Thay doi thong tin tai khoan
	 * */
	@RequestMapping("edit")
	public String edit(Model model, HttpSession httpSession) {
		Customer user = (Customer)httpSession.getAttribute("user");		
		model.addAttribute("user", user);
		return "user/home/account/edit";
	}
	
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(Model model,
			HttpSession httpSession,
			@ModelAttribute("user") Customer user,
			@RequestParam("upphoto") MultipartFile photo) 
	{
		try {
			if(!photo.isEmpty()) {
				String path = app.getRealPath("/assets/upload/customers/files/"+user.getPhoto());
				File oldFile = new File(path);
				oldFile.delete();
				
				String filename = System.currentTimeMillis()+"-"+photo.getOriginalFilename();
				user.setPhoto(filename);
				/// Save photo into assets res on host
				path = app.getRealPath("/assets/upload/customers/files/"+user.getPhoto());
				photo.transferTo(new File(path));
			}
			customerService.update(user);
			httpSession.setAttribute("user", user);
			model.addAttribute("message", "Cập nhật thành công");
		}
		catch (Exception e) {
			model.addAttribute("message", "Cập nhật thất bại");
		}
		return "user/home/account/edit";
	}
	
}


