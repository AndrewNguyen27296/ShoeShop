package shoeshop.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import shoeshop.entities.Master;

public class AdminAuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		String cpath = request.getContextPath();
		
		Master master = (Master) httpSession.getAttribute("master");
		if(master == null) {
			response.sendRedirect(cpath+"/admin/login/");
			return false;
		}
				
		return true;
	}	
	
}
